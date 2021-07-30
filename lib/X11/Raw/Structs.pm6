use v6.c;

use Method::Also;
use NativeCall;

#use Font::FreeType::Raw::Defs;

use X11::Compat::Definitions;
use X11::Raw::Definitions;
use X11::Raw::Enums;

unit package X11::Raw::Structs;


class TranslationData       is repr<CStruct> is export { ... } # L2306
class ATranslationData      is repr<CStruct> is export { ... } # L13
class TMComplexBindProcsRec is repr<CStruct> is export { ... } # L2039

class TMTypeMatchRec        is repr<CStruct> is export { ... } # L48
class TMModifierMatchRec    is repr<CStruct> is export { ... } # L42

constant TMTypeMatch     is export := TMTypeMatchRec;
constant TMModifierMatch is export := TMModifierMatchRec;

#| TMTypeMatch, TMModifierMatch, TMEventPtr --> Nil
constant MatchProc         is export  := Pointer;

#| Widgert, XEvent, String*, Cardinal* --> Nil
constant XtActionProc      is export  := Pointer;
constant XtBoundActions    is export  := CArray[XtActionProc];

#| & (Pointer --> Nil)
constant XtBlockHookProc   is export  := Pointer;

#| Display*, XtKeyCode, Modifiers, Modifiers*, KeySym*
constant XtKeyProc         is export  := Pointer;

#| Display*, KeySym, KeySym*, KeySym*
constant XtCaseProc        is export  := Pointer;

#| ?
constant XtGeometryHandler is export := Pointer;

#| ?
constant XtWidgetProc      is export := Pointer;

class XKeyboardControl is repr<CStruct> is export {
  has realInt $.key_click_percent;
  has realInt $.bell_percent     ;
  has realInt $.bell_pitch       ;
  has realInt $.bell_duration    ;
  has realInt $.led              ;
  has realInt $.led_mode         ;
  has realInt $.key              ;
  has realInt $.auto_repeat_mode ;  #= e?:<On Off Default>
}

class XPixmapFormatValues is repr<CStruct> is export {
  has realUInt $.depth           is rw;
  has realUInt $.bits_per_pixel  is rw;
  has realUInt $.scanline_pad    is rw;
}

class XSetWindowAttributes is repr<CStruct> is export {
  has Pixmap   $.background_pixmap     is rw; #=         - background or None or ParentRelative
  has ulong    $.background_pixel      is rw; #=         - background pixel
  has Pixmap   $.border_pixmap         is rw; #=         - border of the window
  has ulong    $.border_pixel          is rw; #=         - border pixel value
  has int      $.bit_gravity           is rw; #=         - one of bit gravity values
  has int      $.win_gravity           is rw; #=         - one of the window gravity values
  has int      $.backing_store         is rw; #=         - NotUseful, WhenMapped, Always
  has ulong    $.backing_planes        is rw; #=         - planes to be preserved if possible
  has ulong    $.backing_pixel         is rw; #=         - value to use in restoring planes
  has Boolean  $.save_under            is rw; #= ot:Bool - should bits under be saved? (popups) */
  has long     $.event_mask            is rw; #=         - set of events that should be saved */
  has long     $.do_not_propagate_mask is rw; #=         - set of events that should not propagate */
  has Boolean  $.override_redirect     is rw; #= ot:Bool - boolean value for override-redirect */
  has Colormap $.colormap              is rw; #=         - color map to be associated with window */
  has X11Cursor   $.cursor                is rw; #=         - cursor to be displayed (or None) */
}

class XWindowChanges is repr<CStruct> is export {
  has realInt $.x            is rw;
  has realInt $.y            is rw;
  has realInt $.width        is rw;
  has realInt $.height       is rw;
  has realInt $.border_width is rw;
  has Window  $.sibling      is rw;
  has realInt $.stack_mode   is rw;
}

class XImageFuncs is repr<CStruct> is export {
  has Pointer $.create_image;  #= fp:(Display* ,4* ,uint ,realInt ,realInt ,Str ,uint ,uint ,realInt ,realInt --> XImage);
  has Pointer $.destroy_image; #= fp:(XImage * --> int   );
  has Pointer $.get_pixel;     #= fp:(XImage *, int, int --> ulong );
  has Pointer $.put_pixel;     #= fp:(XImage *, int, int, unsigned long --> int   );
  has Pointer $.sub_image;     #= fp:XImage *, int, int, unsigned int, unsigned int --> XImage);
  has Pointer $.add_pixel;     #= fp:(XImage *, long --> int   );
}

class XImage is repr<CStruct> is export {
  has int           $.width,
  has int           $.height;            #= size of image
  has int           $.xoffset;           #= number of pixels offset in X direction
  has int           $.format;            #= XYBitmap, XYPixmap, ZPixmap
  has CArray[uint8] $.data;              #= pointer to image data
  has int           $.byte_order;        #= data byte order, LSBFirst, MSBFirst
  has int           $.bitmap_unit;       #= quant. of scanline 8, 16, 32
  has int           $.bitmap_bit_order;  #= LSBFirst, MSBFirst
  has int           $.bitmap_pad;        #= 8, 16, 32 either XY or ZPixmap
  has int           $.depth;             #= depth of image
  has int           $.bytes_per_line;    #= accelarator to next line
  has int           $.bits_per_pixel;    #= bits per pixel (ZPixmap)
  has ulong         $.red_mask;          #= bits in z arrangement
  has ulong         $.green_mask;
  has ulong         $.blue_mask;
  has XPointer      $.obdata;            # hook for the object routines to hang on
  HAS XImageFuncs   $.f;
}


class LateBindings is repr<CStruct> is export {
  has uint   $.knot       is rw; #= b:1;
  has uint   $.pair       is rw; #= b:1;
  has ushort $.ref_count       ; #= garbage collection
  has KeySym $.keysym     is rw;
}

class XtCallbackRec is repr<CStruct> is export {
  has Pointer    $.callback; #= fp:XtCallbackProc
  has XtPointer  $.closure;
}
# cw: Denotes TypedBuffer of XtCallbackRec
class XtCallbackList is repr<CPointer> is export { * }

class EventRec is repr<CStruct> is export {
	has TMLongCard      $!modifiers    ;
	has TMLongCard      $!modifierMask ;
	has LateBindings    $!lateModifiers;
	has TMLongCard      $!eventType    ;
	has TMLongCard      $!eventCode    ;
	has TMLongCard      $!eventCodeMask;
	has MatchProc       $!matchEvent   ;
	has Boolean         $!standard     ;
}
constant Event is export := EventRec;

class Display  is repr<CStruct> is export  { ... }

class XAnyEvent is repr<CStruct> is export {
  has realInt $.type       is rw;
  has ulong   $.serial     is rw; #= - # of last request processed by server
  has Boolean $.send_event is rw; #= - true if this came from a SendEvent request
  has Display $.display         ; #= - Display the event was read from
  has Window  $.window     is rw; #= - window on which event was requested in event mask
}

class XGenericEvent is repr<CStruct> is export {
  has realInt  $.type       is rw; #=         - of event. Always GenericEvent
  has ulong    $.serial     is rw; #=         - # of last request processed
  has Boolean  $.send_event is rw; #= ot:Bool - true if from SendEvent request
  has Display  $.display         ; #=         - Display the event was read from
  has realInt  $.extension  is rw; #=         - major opcode of extension that caused the event
  has realInt  $.evtype     is rw; #=         - actual event type.
}

class XEventPadding is repr<CStruct> {
  HAS long     @.pad[24]    is CArray;
}

class XKeyEvent is repr<CStruct> is export {
  has realInt  $.type        is rw; #=             - type of event
  has ulong    $.serial      is rw; #=             - # of last request processed by server
  has Boolean  $.send_event  is rw; #= ot:Boolean  - true if this came from a SendEvent request
  has Display  $.display          ; #=             - Display the event was read from
  has Window   $.window      is rw; #=             - "event" window it is reported relative to
  has Window   $.root        is rw; #=             - root window that the event occurred on
  has Window   $.subwindow   is rw; #=             - child window
  has Time     $.time        is rw; #=             - milliseconds
  has realInt  $.x           is rw; #=             -
  has realInt  $.y           is rw; #=             - pointer x, y coordinates in event window
  has realInt  $.x_root      is rw; #=             -
  has realInt  $.y_root      is rw; #=             - coordinates relative to root
  has realUInt $.state       is rw; #=             - key or button mask
  has realUInt $.keycode     is rw; #=             - detail
  has Boolean  $.same_screen is rw; #= ot:Boolean  - same screen flag
}
constant XKeyPressedEvent  is export := XKeyEvent;
constant XKeyReleasedEvent is export := XKeyEvent;

class XMappingEvent is repr<CStruct> is export {
  has realInt     $.type          is rw;
  has ulong       $.serial        is rw; #=         - # of last request processed by server
  has Boolean     $.send_event    is rw; #= ot:Bool - true if this came from a SendEvent request
  has Display     $.display            ; #=         - Display the event was read from
  has Window      $.window        is rw; #=         - unused
  has realInt     $.request       is rw; #=         - one of MappingModifier, MappingKeyboard, MappingPointer
  has realInt     $.first_keycode is rw; #=         - first keycode
  has realInt     $.count         is rw; #=         - defines range of change w. first_keycod
}

class XmbTextItem is repr<CStruct> is export {
  has CArray[uint8]   $.chars          ;
  has realInt         $.nchars    is rw;
  has realInt         $.delta     is rw;
  has XFontSet        $.font_set       ;
}

class XwcTextItem is repr<CStruct> is export {
  has CArray[wchar_t] $.chars         ;
  has int             $.nchars   is rw;
  has int             $.delta    is rw;
  has XFontSet        $.font_set      ;
}

class XButtonEvent is repr<CStruct> is export {
  has realInt  $.type;         #=          -  of event
  has ulong    $.serial;       #=          -  # of last request processed by server
  has Boolean  $.send_event;   #= ot:Bool  -  true if this came from a SendEvent request
  has Display  $.display;      #=          -  Display the event was read from
  has Window   $.window;       #=          -  "event" window it is reported relative to
  has Window   $.root;         #=          -  root window that the event occurred on
  has Window   $.subwindow;    #=          -  child window
  has Time     $.time;         #=          -  milliseconds
  has realInt  $.x;            #=          -
  has realInt  $.y;            #=          -  pointer x, y coordinates in event window
  has realInt  $.x_root;       #=          -
  has realInt  $.y_root;       #=          -  coordinates relative to root
  has realUInt $.state;        #=          -  key or button mask
  has realUInt $.button;       #=          -  detail
  has Boolean  $.same_screen;  #= ot:Bool  -  same screen flag
}
constant XButtonPressedEvent  is export := XButtonEvent;
constant XButtonReleasedEvent is export := XButtonEvent;

class XMotionEvent is repr<CStruct> is export {
  has realInt $.type;         #=          - of event
  has ulong   $.serial;       #=          - # of last request processed by server
  has Boolean $.send_event;   #= ot:Bool  - true if this came from a SendEvent request
  has Display $.display;      #=          - Display the event was read from
  has Window  $.window;       #=          - "event" window reported relative to
  has Window  $.root;         #=          - root window that the event occurred on
  has Window  $.subwindow;    #=          - child window
  has Time    $.time;         #=          - milliseconds
  has realInt $.x;
  has realInt $.y;            #=          - pointer x, y coordinates in event window */
  has realInt $.x_root;       #=
  has realInt $.y_root;       #=          - coordinates relative to root
  has uint    $.state;        #=          - key or button mask
  has char    $.is_hint;      #=          - detail
  has Boolean $.same_screen;  #=  ot:Bool - same screen flag
}
constant XPointerMovedEvent is export := XMotionEvent;

class XCrossingEvent is repr<CStruct> is export {
  has int      $.type;         #=            - of event
  has ulong    $.serial;       #=            - # of last request processed by server
  has Boolean  $.send_event;   #=  ot:Bool   - true if this came from a SendEvent request
  has Display  $.display;      #=            - Display the event was read from
  has Window   $.window;       #=            - "event" window reported relative to
  has Window   $.root;         #=            - root window that the event occurred on
  has Window   $.subwindow;    #=            - child window
  has Time     $.time;         #=            - milliseconds
  has realInt  $.x;
  has realInt  $.y;            #=            - pointer x, y coordinates in event window
  has realInt  $.x_root;
  has realInt  $.y_root;       #=            - coordinates relative to root
  has realInt  $.mode;         #=  vv:<NotifyNormal NotifyGrab NotifyUngrab>
  has realInt  $.detail;       #=  vv:<NotifyAncestor NotifyVirtual NotifyInferior NotifyNonlinear NotifyNonlinearVirtual>
  has Boolean  $.same_screen;  #=  ot:Bool   - same screen flag
  has Boolean  $.focus;        #=  ot:Bool   - boolean focus
  has realUInt $.state;        #=            - key or button mask
}
constant XEnterWindowEvent is export := XCrossingEvent;
constant XLeaveWindowEvent is export := XCrossingEvent;

class XFocusChangeEvent is repr<CStruct> is export {
  has realInt $.type;          #= vv:<FocusIn FocusOut>
  has ulong   $.serial;        #=                         - # of last request processed by server
  has Boolean $.send_event;    #=                         - true if this came from a SendEvent request
  has Display $.display;       #=                         - Display the event was read from
  has Window  $.window;        #=                         - window of event
  has realInt $.mode;          #= vv:<NotifyNormal NotifyWhileGrabbed NotifyGrab NotifyUngrab>
  has realInt $.detail;        #= vv:<NotifyAncestor NotifyVirtual NotifyInferior NotifyNonlinear NotifyNonlinearVirtual NotifyPointer NotifyPointerRoot NotifyDetailNone>
}
constant XFocusInEvent  is export := XFocusChangeEvent;
constant XFocusOutEvent is export := XFocusChangeEvent;

class XKeymapEvent is repr<CStruct> is export {
  has realInt $.type                    ; #=
  has ulong   $.serial                  ; #=            - # of last request processed by server
  has Boolean $.send_event              ; #=    ot:Bool - true if this came from a SendEvent request
  has Display $.display                 ; #=            - Display the event was read from
  has Window  $.window                  ; #=
  HAS char    @.key_vector[32] is CArray; #=
}

# cw: Add missing CStrucgs as they are created.
class XEvent is repr<CUnion> is export {
  has realInt                 $.type;
  HAS XAnyEvent               $.any;
  HAS XKeyEvent               $.xkey;
  HAS XButtonEvent            $.xbutton;
  HAS XMotionEvent            $.xmotion;
  HAS XCrossingEvent          $.xcrossing;
  HAS XFocusChangeEvent       $.xfocus;
  # HAS XExposeEvent            $.xexpose;
  # HAS XGraphicsExposeEvent    $.xgraphicsexpose;
  # HAS XNoExposeEvent          $.xnoexpose;
  # HAS XVisibilityEvent        $.xvisibility;
  # HAS XCreateWindowEvent      $.xcreatewindow;
  # HAS XDestroyWindowEvent     $.xdestroywindow;
  # HAS XUnmapEvent             $.xunmap;
  # HAS XMapEvent               $.xmap;
  # HAS XMapRequestEvent        $.xmaprequest;
  # HAS XReparentEvent          $.xreparent;
  # HAS XConfigureEvent         $.xconfigure;
  # HAS XGravityEvent           $.xgravity;
  # HAS XResizeRequestEvent     $.xresizerequest;
  # HAS XConfigureRequestEvent  $.xconfigurerequest;
  # HAS XCirculateEvent         $.xcirculate;
  # HAS XCirculateRequestEvent  $.xcirculaterequest;
  # HAS XPropertyEvent          $.xproperty;
  # HAS XSelectionClearEvent    $.xselectionclear;
  # HAS XSelectionRequestEvent  $.xselectionrequest;
  # HAS XSelectionEvent         $.xselection;
  # HAS XColormapEvent          $.xcolormap;
  # HAS XClientMessageEvent     $.xclient;
  HAS XMappingEvent           $.xmapping;
  # HAS XErrorEvent             $.xerror;
  HAS XKeymapEvent            $.xkeymap;
  HAS XGenericEvent           $.xgeneric;
  # HAS XGenericEventCookie     $.xcookie;
  HAS XEventPadding           $!padding;
}

class TMEventRec is repr<CStruct> is export {
  has XEvent $!xev;
  HAS Event  $!event;
}

class TMModifierMatchRec {
	has TMLongCard    $!modifiers    ;
	has TMLongCard    $!modifierMask ;
	has LateBindings  $!lateModifiers;
	has Boolean       $!standard     ;
}

class TMTypeMatchRec {
	has TMLongCard $!eventType    ;
	has TMLongCard $!eventCode    ;
	has TMLongCard $!eventCodeMask;
	has MatchProc  $!matchEvent   ;
}

class ATranslationData {
	has Str                   $!hasBindings;
	has Str                   $!operation  ;
	has TranslationData       $!xlations   ;
	has ATranslationData      $!next       ;
	has TMComplexBindProcsRec $!bindTbl    ;
}

class ActionHook is repr<CStruct> is export {
	has ActionHook    $!next   ;
	has XtAppContext  $!app    ;
	has Pointer       $!proc   ; #= fp:XtActionHookProc
	has XtPointer     $!closure;
}
constant ActionHookRec is export := ActionHook;

class Actions is repr<CStruct> is export {
	has int        $!idx       ;
	has String     $!params    ;
	has Cardinal   $!num_params;
	has Actions    $!next      ;
}
constant ActionsRec is export := Actions;

class AppleWMAttachTransient is repr<CStruct> is export {
	has CARD8  $.reqType      is rw;
	has CARD8  $.wmReqType    is rw;
	has CARD16 $.length       is rw;
	has CARD32 $.child        is rw;
	has CARD32 $.parent       is rw;
}

class AppleWMDisableUpdate is repr<CStruct> is export {
	has CARD8  $.reqType      is rw;
	has CARD8  $.wmReqType    is rw;
	has CARD16 $.length       is rw;
	has CARD32 $.screen       is rw;
}

class AppleWMFrameDraw is repr<CStruct> is export {
	has CARD8  $.reqType      is rw;
	has CARD8  $.wmReqType    is rw;
	has CARD16 $.length       is rw;
	has CARD32 $.screen       is rw;
	has CARD32 $.window       is rw;
	has CARD16 $.frame_class  is rw;
	has CARD16 $.frame_attr   is rw;
	has CARD16 $.ix           is rw;
	has CARD16 $.iy           is rw;
	has CARD16 $.iw           is rw;
	has CARD16 $.ih           is rw;
	has CARD16 $.ox           is rw;
	has CARD16 $.oy           is rw;
	has CARD16 $.ow           is rw;
	has CARD16 $.oh           is rw;
	has CARD32 $.title_length is rw;
}

class AppleWMFrameGetRect is repr<CStruct> is export {
	has CARD8  $.reqType     is rw;
	has CARD8  $.wmReqType   is rw;
	has CARD16 $.length      is rw;
	has CARD16 $.frame_class is rw;
	has CARD16 $.frame_rect  is rw;
	has CARD16 $.ix          is rw;
	has CARD16 $.iy          is rw;
	has CARD16 $.iw          is rw;
	has CARD16 $.ih          is rw;
	has CARD16 $.ox          is rw;
	has CARD16 $.oy          is rw;
	has CARD16 $.ow          is rw;
	has CARD16 $.oh          is rw;
}

class AppleWMFrameHitTest is repr<CStruct> is export {
	has CARD8  $.reqType     is rw;
	has CARD8  $.wmReqType   is rw;
	has CARD16 $.length      is rw;
	has CARD16 $.frame_class is rw;
	has CARD16 $.pad1        is rw;
	has CARD16 $.px          is rw;
	has CARD16 $.py          is rw;
	has CARD16 $.ix          is rw;
	has CARD16 $.iy          is rw;
	has CARD16 $.iw          is rw;
	has CARD16 $.ih          is rw;
	has CARD16 $.ox          is rw;
	has CARD16 $.oy          is rw;
	has CARD16 $.ow          is rw;
	has CARD16 $.oh          is rw;
}

class AppleWMNotify is repr<CStruct> is export {
	has BYTE   $.type           is rw;
	has BYTE   $.kind           is rw;
	has CARD16 $.sequenceNumber is rw;
	has Time   $!time          ;
	has CARD16 $.pad1           is rw;
	has CARD32 $.arg            is rw;
	has CARD32 $.pad3           is rw;
	has CARD32 $.pad4           is rw;
	has CARD32 $.pad5           is rw;
	has CARD32 $.pad6           is rw;
}

class AppleWMQueryVersion is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
}

class AppleWMReenableUpdate is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD32 $.screen    is rw;
}

class AppleWMSelectInput is repr<CStruct> is export {
	has CARD8  $.reqType  ;
	has CARD8  $.wmReqType;
	has CARD16 $.length   ;
	has CARD32 $.mask     ;
}

class AppleWMSendPSN is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD32 $.psn_hi    is rw;
	has CARD32 $.psn_lo    is rw;
}

class AppleWMSetCanQuit is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD32 $.state     is rw;
}

class AppleWMSetFrontProcess is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
}

class AppleWMSetWindowLevel is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD32 $.window    is rw;
	has CARD32 $.level     is rw;
}

class AppleWMSetWindowMenu is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD16 $.nitems    is rw;
	has CARD16 $.pad1      is rw;
}

class AppleWMSetWindowMenuCheck is repr<CStruct> is export {
	has CARD8  $.reqType   is rw;
	has CARD8  $.wmReqType is rw;
	has CARD16 $.length    is rw;
	has CARD32 $.index     is rw;
}

class CoreClassPart             is repr<CStruct> is export { ... } # L534
class CompositeClassPart        is repr<CStruct> is export { ... } # L459
class ShellClassPart            is repr<CStruct> is export { ... } # L781
class WMShellClassPart          is repr<CStruct> is export { ... }
class VendorShellClassPart      is repr<CStruct> is export { ... }
class TopLevelShellClassPart    is repr<CStruct> is export { ... }
class ApplicationShellClassPart is repr<CStruct> is export { ... }

class ApplicationShellClassRec  is repr<CStruct> is export {
	has CoreClassPart             $!core_class             ;
	has CompositeClassPart        $!composite_class        ;
	has ShellClassPart            $!shell_class            ;
	has WMShellClassPart          $!wm_shell_class         ;
	has VendorShellClassPart      $!vendor_shell_class     ;
	has TopLevelShellClassPart    $!top_level_shell_class  ;
	has ApplicationShellClassPart $!application_shell_class;
}

class SimpleClassPart    is repr<CStruct> is export { ... }
class TextClassPart      is repr<CStruct> is export { ... }
class AsciiClassPart     is repr<CStruct> is export { ... }
class AsciiDiskClassPart is repr<CStruct> is export { ... }

class AsciiDiskClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class  ;
	has SimpleClassPart    $!simple_class;
	has TextClassPart      $!text_class  ;
	has AsciiClassPart     $!ascii_class ;
	has AsciiDiskClassPart $!disk_class  ;
}

class CorePart      is repr<CStruct> is export { ... } # L571
class SimplePart    is repr<CStruct> is export { ... }
class TextPart      is repr<CStruct> is export { ... } # L3246

class AsciiPart is repr<CStruct> is export {
  has int       $.resource is rw;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class AsciiDiskPart is repr<CStruct> is export {
  has char      $.resource is rw;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class XFontStruct is repr<CStruct> is export { ... } # L1753
class FontRec     is repr<CStruct> is export { ... } # L1791

class XGCValues is repr<CStruct> is export {
  has int       $.function           is rw;  #= logical operation
  has ulong     $.plane_mask         is rw;  #= plane mask
  has ulong     $.foreground         is rw;  #= foreground pixel
  has ulong     $.background         is rw;  #= background pixel
  has int       $.line_width         is rw;  #= line width
  has int       $.line_style         is rw;  #= LineSolid, LineOnOffDash, LineDoubleDash
  has int       $.cap_style          is rw;  #= CapNotLast, CapButt,CapRound, CapProjecting
  has int       $.join_style         is rw;  #= JoinMiter, JoinRound, JoinBevel
  has int       $.fill_style         is rw;  #= FillSolid, FillTiled, FillStippled, FillOpaeueStippled
  has int       $.fill_rule          is rw;  #= EvenOddRule, WindingRule
  has int       $.arc_mode           is rw;  #= ArcChord, ArcPieSlice
  has Pixmap    $.tile               is rw;  #= tile pixmap for tiling operations
  has Pixmap    $.stipple            is rw;  #= stipple 1 plane pixmap for stipping
  has int       $.ts_x_origin        is rw;  #= offset for tile or stipple operations
  has int       $.ts_y_origin        is rw;
  has FontRec   $!font;                      #= default text font for text operations
  has int       $.subwindow_mode     is rw;  #= ClipByChildren, IncludeInferiors
  has Boolean   $.graphics_exposures is rw;  #= ot:Bool - boolean, should exposures be generated
  has int       $.clip_x_origin      is rw;  #= origin for clipping
  has int       $.clip_y_origin      is rw;
  has Pixmap    $.clip_mask;                 #= bitmap clipping; other calls for rects
  has int       $.dash_offset;               #= patterned/dashed line information
  has uint8     $.dashes;                    #= ot:char
}

class XExtData is repr<CStruct> is export {
  has int      $.number;       #= number returned by XRegisterExtension */
  has XExtData $!next;         #= next item on list of data for structure */
  has Pointer  $!free_private; #= fp:(XExtData --> int)
  has XPointer $!private_data; #= data private to this extension.
}

class XGC is repr<CStruct> is export {
  has XExtData  $.ext_data;        #= hook for extension to hang data
  has GContext  $.gid       is rw; #= protocol ID for graphics context
  has Boolean   $!rects ;          #= boolean: TRUE if clipmask is list of rectangles
  has Boolean   $!dashes;          #= boolean: TRUE if dash-list is really a list
  has ulong     $!dirty ;          #= cache dirty bits
  has XGCValues $!values;          #= shadow structure of values
}
constant GC is export := XGC;

class AsciiSinkPart is repr<CStruct> is export {
  has XFontStruct        $.font;                      #= Font to draw in.fg
  has Boolean            $.echo                is rw;
  has Boolean            $.display_nonprinting is rw;
  # private
  HAS GC                 $!normgc;
  HAS GC                 $!invgc;
  HAS GC                 $!xorgc;
  has XawTextPosition    $!cursor_position;
  has XawTextInsertState $!laststate;
  has short              $!cursor_x;        #= X11Cursor Location.
  has short              $!cursor_y;        #= X11Cursor Location.

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer          $!pad1;
  has XtPointer          $!pad2;
  has XtPointer          $!pad3;
  has XtPointer          $!pad4;
}

class AsciiDiskRec is repr<CStruct> is export {
	has CorePart      $!core      ;
	has SimplePart    $!simple    ;
	has TextPart      $!text      ;
	has AsciiPart     $!ascii     ;
	has AsciiDiskPart $!ascii_disk;
}

class AsciiRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has TextPart   $!text  ;
	has AsciiPart  $!ascii ;
}

class AsciiSinkClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class ObjectClassPart    is repr<CStruct> is export { ... }
class TextSinkClassPart  is repr<CStruct> is export { ... }

class AsciiSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart    $!object_class    ;
	has TextSinkClassPart  $!text_sink_class ;
	has AsciiSinkClassPart $!ascii_sink_class;
}

class ObjectPart    is repr<CStruct> is export { ... }

class XawTextProperty is repr<CStruct> is export {
  has  XrmQuark     $.identifier          is rw;
  has  XrmQuark     $.code                is rw;
  has  ulong        $.mask                is rw;
  has  XFontStruct  $.font                is rw;
  has  XFontSet     $.fontset             is rw;
  has  Pixel        $.foreground          is rw;
  has  Pixel        $.background          is rw;
  has  Pixmap       $.foreground_pixmap   is rw;
  has  Pixmap       $.background_pixmap   is rw;
  has  XrmQuark     $.xlfd                is rw;
  has  ulong        $.xlfd_mask           is rw;
  has  XrmQuark     $.foundry             is rw;
  has  XrmQuark     $.family              is rw;
  has  XrmQuark     $.weight              is rw;
  has  XrmQuark     $.slant               is rw;
  has  XrmQuark     $.setwidth            is rw;
  has  XrmQuark     $.addstyle            is rw;
  has  XrmQuark     $.pixel_size          is rw;
  has  XrmQuark     $.point_size          is rw;
  has  XrmQuark     $.res_x               is rw;
  has  XrmQuark     $.res_y               is rw;
  has  XrmQuark     $.spacing             is rw;
  has  XrmQuark     $.avgwidth            is rw;
  has  XrmQuark     $.registry            is rw;
  has  XrmQuark     $.encoding            is rw;
  has  short        $.underline_position  is rw;
  has  short        $.underline_thickness is rw;
}

class Screen is repr<CStruct> is export { ... }

class XawTextPropertyList is repr<CStruct> is export {
	has XrmQuark                         $.identifier      is rw;
	has Screen                           $!screen               ;
	has Colormap                         $.colormap        is rw;
	has int                              $.depth           is rw;
	has CArray[Pointer[XawTextProperty]] $!properties           ;
	has Cardinal                         $.num_properties  is rw;
	has XawTextPropertyList              $!next                 ;
}

class XmuSegment is repr<CStruct> is export {
  has int        $.x1    is rw;
  has int        $.x2    is rw;
  has XmuSegment $.next;
}

class XmuScanline is repr<CStruct> is export {
  has int         $.y        is rw;
  has XmuSegment  $.segment;
  has XmuScanline $.next;
}
constant XmuTextUpdate is export := XmuScanline;

class XmuArea is repr<CStruct> is export {
  has XmuScanline $!scanline;
}

class XawTextPaintStruct is repr<CStruct> is export {
	has XawTextPaintStruct $!next       ;
	has int                $!x          ;
	has int                $!y          ;
	has int                $!width      ;
	has Str                $!text       ;
	has Cardinal           $!length     ;
	has XawTextProperty    $!property   ;
	has int                $!max_ascent ;
	has int                $!max_descent;
	has XmuArea            $!backtabs   ;
	has Boolean            $!highlight  ;
}

class XawTextPaintList is repr<CStruct> is export {
  # clip list
  has XmuArea            $.clip;
  has XmuArea            $.hightabs;
  # drawing information
  has XawTextPaintStruct $.paint;
  has XawTextPaintStruct $.bearings;
}

class TextSinkPart is repr<CStruct> is export {
  # resources
  has Pixel               $.foreground       is rw    ; #= - Foreground color
  has Pixel               $.background       is rw    ; #= - Background color

  # private
  has Position            $.tabs             is rw    ; #= - The tab stops as pixel values
  has CArray[short]       $.char_tabs                 ; #= - The tabs stops as character values
  has realInt             $.tab_count                 ; #= - number of items in tabs

  # more resources
  has Pixel               $.cursor_color     is rw    ;
  has XawTextPropertyList $.properties                ;
  has XawTextPaintList    $.paint                     ;
  has XtPointer           @.pad[2]           is CArray;
}

class AsciiSinkRec is repr<CStruct> is export {
	has ObjectPart    $!object    ;
	has TextSinkPart  $!text_sink ;
	has AsciiSinkPart $!ascii_sink;
}

class AsciiSrcClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class TextSrcClassPart  is repr<CStruct> is export { ... }

class AsciiSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSrcClassPart  $!text_src_class ;
	has AsciiSrcClassPart $!ascii_src_class;
}

class Piece is repr<CStruct> is export {
  has Str             $!text       ; #= The text in this buffer
  has XawTextPosition $.used  is rw; #= The number of characters of this buffer that have been used
  has Piece           $.prev       ;
  has Piece           $.next       ; #= linked list pointers
}

class AsciiSrcPart is repr<CStruct> is export {
	has Str             $!string             ;
	has XawAsciiType    $!type               ;
	has XawTextPosition $!piece_size         ;
	has Boolean         $!data_compression   ;
	has XtCallbackList  $!callback           ;
	has Boolean         $!use_string_in_place;
	has int             $!ascii_length       ;
	has String          $!filename           ;
	has Boolean         $!is_tempfile        ;
	has Boolean         $!changes            ;
	has Boolean         $!allocated_string   ;
	has XawTextPosition $!length             ;
	has Piece           $!first_piece        ;
	has XtPointer       $!pad                ;
}

class Widget is repr<CStruct> is export {
	has CorePart $!core;
}
class WidgetList is repr<CPointer> is export { * }
constant WidgetRec  is export := Widget;
constant CoreRec    is export := Widget;

class XawTextEntity is repr<CStruct> is export {
	has short           $.type      is rw;
	has short           $.flags     is rw;
	has XawTextEntity   $!next    ;
	has XtPointer       $!data    ;
	has XawTextPosition $.offset    is rw;
	has Cardinal        $.length    is rw;
	has XrmQuark        $!property;
}

class XawTextAnchor is repr<CStruct> is export {
  has XawTextPosition $.position is rw;
  has XawTextEntity   $.entities      ;
  has XawTextEntity   $.cache         ;
}

class TextSrcPart is repr<CStruct> is export {
    # resources
    has XawTextEditType                $.edit_mode          is rw    ;
    has XrmQuark                       $.text_format        is rw    ; #= - 2 formats: FMT8BIT for Ascii FMTWIDE for ISO 10646
    has XtCallbackList                 $.callback                    ; #= - A callback list to call when the source is changed
    has Boolean                        $.changed            is rw    ;
    has Boolean                        $.enable_undo        is rw    ;
    # private state
    has Boolean                        $.undo_state         is rw    ; #= - to protect undo manipulation
    has XawTextUndo                    $.undo               is rw    ;
    has CArray[Widget]                 $.text                        ; #= - TextWidget's using this source
    has Cardinal                       $.num_text           is rw    ;
    has XtCallbackList                 $.property_callback           ;
    has CArray[Pointer[XawTextAnchor]] $.anchors                     ;
    has realInt                        $.num_anchors        is rw    ;
    HAS XtPointer                      @.pad[1]             is CArray; #= - for future use and keep binary compatability
}

class AsciiSrcRec is repr<CStruct> is export {
	has ObjectPart   $!object   ;
	has TextSrcPart  $!text_src ;
	has AsciiSrcPart $!ascii_src;
}

class AsciiStringClassPart is repr<CStruct> is export { ... }

class AsciiStringClassRec is repr<CStruct> is export {
	has CoreClassPart        $!core_class  ;
	has SimpleClassPart      $!simple_class;
	has TextClassPart        $!text_class  ;
	has AsciiClassPart       $!ascii_class ;
	has AsciiStringClassPart $!string_class;
}

class AsciiStringPart is repr<CStruct> is export {
  has int                $.resource is rw;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer          $!pad1;
  has XtPointer          $!pad2;
  has XtPointer          $!pad3;
  has XtPointer          $!pad4;
}

class XawDisplayList is repr<CPointer> is export { * }

class SimplePart {
  # resources
  has X11Cursor         $.cursor             is rw;
  has Pixmap         $.insensitive_border is rw;
  has String         $!cursor_name             ; #= cursor specified by name
  has Pixel          $.pointer_fg         is rw; #= Pointer colors
  has Pixel          $.pointer_bg         is rw; #= Pointer colors
  has Boolean        $.international      is rw;
  # private
  has XawDisplayList $!display_list;
  has String         $!tip;
  #has XtPointer pad[3];   /* for future use and keep binary compatability */
  has XtPointer      $!pad1;
  has XtPointer      $!pad2;
  has XtPointer      $!pad3;
} ;

class AsciiStringRec is repr<CStruct> is export {
	has CorePart        $!core     ;
	has SimplePart      $!simple   ;
	has TextPart        $!text     ;
	has AsciiPart       $!ascii    ;
	has AsciiStringPart $!ascii_str;
}

class AsciiTextClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has TextClassPart   $!text_class  ;
	has AsciiClassPart  $!ascii_class ;
}

class BlockHook is repr<CStruct> is export {
	has BlockHook       $!next   ;
	has XtAppContext    $!app    ;
	has XtBlockHookProc $!proc   ;
	has XtPointer       $!closure;
}
constant BlockHookRec is export := BlockHook;

class BoxClassPart is repr<CStruct> is export { ... }

class BoxClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has BoxClassPart       $!box_class      ;
}

class BoxPart is repr<CStruct> is export {
  has Dimension      $.h_space     is rw;
  has Dimension      $.v_space     is rw;
  has XtOrientation  $.orientation is rw;
  # private state
  has Dimension      $!preferred_width;
  has Dimension      $!preferred_height;
  has Dimension      $!last_query_width;
  has Dimension      $!last_query_height;
  has XtGeometryMask $!last_query_mode;
  has XawDisplayList $!display_list;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer      $!pad1;
  has XtPointer      $!pad2;
  has XtPointer      $!pad3;
  has XtPointer      $!pad4;
}

class CompositePart is repr<CStruct> is export { ... } # L478

class BoxRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
	has BoxPart       $!box      ;
}

class CaseConverterRec is repr<CStruct> is export {
	has KeySym           $!start;
	has KeySym           $!stop ;
	has XtCaseProc       $!proc ;
	has CaseConverterRec $!next ;
}
constant CaseConverter is export := CaseConverterRec;

class XChar2b is repr<CStruct> is export {
  # normal 16 bit characters are two bytes
  has uint8 $.byte1 is rw;
  has uint8 $.byte2 is rw;
}

class xCharInfo is repr<CStruct> is export {
  has INT16  $.leftSideBearing  is rw;
  has INT16  $.rightSideBearing is rw;
  has INT16  $.characterWidth   is rw;
  has INT16  $.ascent           is rw;
  has INT16  $.descent          is rw;
  has CARD16 $.attributes       is rw;
}

class CharInfo is repr<CStruct> is export {
	has xCharInfo $!metrics;
	has Str       $!bits   ;
}

class CommandClass is repr<CStruct> is export {
	has XtPointer $!extension;
}

class LabelClassPart   is repr<CStruct> is export { ... }
class CommandClassPart is repr<CStruct> is export { ... }

class CommandClassRec is repr<CStruct> is export {
	has CoreClassPart    $!core_class   ;
	has SimpleClassPart  $!simple_class ;
	has LabelClassPart   $!label_class  ;
	has CommandClassPart $!command_class;
}

class CommandPart is repr<CStruct> is export {
  # resources
  has Dimension           $.highlight_thickness is rw;
  has XtCallbackList      $.callbacks;

  # private state
  has Pixmap              $.gray_pixmap         is rw;
  has GC                  $.normal_GC           is rw;
  has GC                  $.inverse_GC          is rw;
  has Boolean             $.set                 is rw;
  has XtCommandHighlight  $.highlighted         is rw;

  # more resources
  has int                 $.shape_style;
  has Dimension           $.corner_round;

  HAS XtPointer           @.pad[4]              is CArray;
}

class LabelPart is repr<CStruct> {
  # resources
  has Pixel       $.foreground      is rw;
  has XFontStruct $!font                 ;
  has XFontSet    $.fontset         is rw;
  has Str         $!label                ;
  has XtJustify   $.justify         is rw;
  has Dimension   $.internal_width  is rw;
  has Dimension   $.internal_height is rw;
  has Pixmap      $.pixmap          is rw;
  has Boolean     $.resize          is rw;
  has uchar       $.encoding        is rw;
  has Pixmap      $.left_bitmap     is rw;

  # private state
  has GC          $!normal_GC;
  has GC          $!gray_GC;
  has Pixmap      $.stipple         is rw;
  has Position    $.label_x         is rw;
  has Position    $.label_y         is rw;
  has Dimension   $.label_width     is rw;
  has Dimension   $.label_height    is rw;
  has Dimension   $.label_len       is rw;
  has realInt     $.lbm_y           is rw;  #= - where in label
  has realUInt    $.lbm_width       is rw;  #= - size of pixmap
  has realUInt    $.lbm_height      is rw;
  HAS XtPointer   @.pad[4]          is CArray;
}

class CommandRec is repr<CStruct> is export {
	has CorePart    $!core   ;
	has SimplePart  $!simple ;
	has LabelPart   $!label  ;
	has CommandPart $!command;
}

class CompositeClassPart {
	has XtGeometryHandler $!geometry_manager;
	has XtWidgetProc      $!change_managed  ;
	has XtWidgetProc      $!insert_child    ;
	has XtWidgetProc      $!delete_child    ;
	has XtPointer         $!extension       ;
}

class CompositeClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
}

# Widget --> Cardinal
constant XtOrderProc is export := Pointer;

class CompositePart {
	has Pointer     $!children       ; # Widget*
	has Cardinal    $!num_children   ;
	has Cardinal    $!num_slots      ;
	has XtOrderProc $!insert_position;
}

class CompositeRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
}

class XtResource is repr<CStruct> is export {
	has String    $!resource_name  ;
	has String    $!resource_class ;
	has String    $!resource_type  ;
	has Cardinal  $!resource_size  ;
	has Cardinal  $!resource_offset;
	has String    $!default_type   ;
	has XtPointer $!default_addr   ;
}
class XtResourceList is repr<CPointer> is export { * }

class ConstraintClassPart is repr<CStruct> is export {
	has Pointer         $!resources      ; #= XtResource *
	has Cardinal        $!num_resources  ;
	has Cardinal        $!constraint_size;
	has Pointer         $!initialize     ; #= XtInitProc
	has Pointer         $!destroy        ; #= XtWidgetProc
	has Pointer         $!set_values     ; #= XtSetValuesFunc
	has Pointer         $!extension      ; #= XtPointer
}

class ConstraintClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
}

class ConstraintPart is repr<CStruct> is export {
	has XtPointer $!mumble;
}

class ConstraintRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
}

class WidgetClassRec is repr<CStruct> is export { ... }
constant WidgetClass is export := WidgetClassRec;

class CoreClassPart {
	has WidgetClass       $!superclass           ;
	has String            $!class_name           ;
	has Cardinal          $!widget_size          ;
	has Pointer           $!class_initialize     ; #= fp:XtProc
	has Pointer           $!class_part_initialize; #= fp:XtWidgetClassProc
	has XtEnum            $!class_inited         ;
	has Pointer           $!initialize           ; #= fp:XtInitProc
	has Pointer           $!initialize_hook      ; #= fp:XtArgsProc
	has Pointer           $!realize              ; #= fp:XtRealizeProc
	has Pointer           $!actions              ; #= fp:XtAction *
	has Cardinal          $!num_actions          ;
	has Pointer           $!resources            ; #= fp:XtResource *
	has Cardinal          $!num_resources        ;
	has XrmClass          $!xrm_class            ;
	has Boolean           $!compress_motion      ;
	has XtEnum            $!compress_exposure    ;
	has Boolean           $!compress_enterleave  ;
	has Boolean           $!visible_interest     ;
	has Pointer           $!destroy              ; #= fp:XtWidgetProc
	has Pointer           $!resize               ; #= fp:XtWidgetProc
	has Pointer           $!expose               ; #= fp:XtExposeProc
	has Pointer           $!set_values           ; #= fp:XtSetValuesFunc
	has Pointer           $!set_values_hook      ; #= fp:XtArgsFunc
	has Pointer           $!set_values_almost    ; #= fp:XtAlmostProc
	has Pointer           $!get_values_hook      ; #= fp:XtArgsProc
	has Pointer           $!accept_focus         ; #= fp:XtAcceptFocusProc
	has XtVersionType     $!version              ;
	has XtPointer         $!callback_private     ;
	has String            $!tm_table             ;
	has Pointer           $!query_geometry       ; #= fp:XtGeometryHandler
	has Pointer           $!display_accelerator  ; #= fp:XtStringProc
	has XtPointer         $!extension            ;
}

class XtEventRec is repr<CStruct> is export {
  has XtEventRec     $!next;
  has EventMask      $.mask               is rw; #  also select_data count for RecExt
  has Pointer        $!proc;                     #= XtEventHandler
  has XtPointer      $!closure;
  has uint           $.select             is rw; #= b:1
  has uint           $.has_type_specifier is rw; #= b:1
  has uint           $.async              is rw; #= b:1 - Not used, here for Digital extension?
}
constant XtEvent      is export := XtEventRec;
constant XtEventTable is export := Pointer;      #= XtEventRec *

class XtStateRec is repr<CStruct> is export {
  has uint64        $.isCycleStart is rw; #= b:1;
  has uint64        $.isCycleEnd   is rw; #= b:1;
  has TMShortCard   $.typeIndex;
  has TMShortCard   $.modIndex;
  has Actions       $.actions;            #= rhs list of actions to perform
  has XtStateRec    $.nextLevel;
}
constant State is export := XtStateRec;

class TMBranchHeadRec is repr<CStruct> is export {
  has uint        $.isSimple   is rw; #= b:1;
  has uint        $.hasActions is rw; #= b:1;
  has uint        $.hasCycles  is rw; #= b:1;
  has uint        $.more       is rw; #= b:13;
  has TMShortCard $.typeIndex  is rw;
  has TMShortCard $.modIndex   is rw;
}
constant TMBranchHead is export := TMBranchHeadRec;

class TMSimpleStateTreeRec is repr<CStruct> is export {
  has uint             $.isSimple              is rw; # b:1;
  has uint             $.isAccelerator         is rw; # b:1;
  has uint             $.mappingNotifyInterest is rw; # b:1;
  has uint             $.refCount              is rw; # b:13;
  has TMShortCard      $.numBranchHeads        is rw;
  has TMShortCard      $.numQuarks             is rw; # Nnumber of entries in quarkTbl
  has TMShortCard      $.unused                is rw; # to ensure same alignment
  has TMBranchHeadRec  $!branchHeadTbl;
  has XrmQuark         $!quarkTbl;                    # table of quarkified rhs
}
constant TMSimpleStateTree is export := TMSimpleStateTreeRec;

class TMComplexStateTreeRec is repr<CStruct> is export {
  has uint             $.isSimple              is rw; #= b:1;
  has uint             $.isAccelerator         is rw; #= b:1;
  has uint             $.mappingNotifyInterest is rw; #= b:1;
  has uint             $.refCount              is rw; #= b:13;
  has TMShortCard      $.numBranchHeads        is rw;
  has TMShortCard      $.numQuarks             is rw; #= Number of entries in quarkTbl
  has TMShortCard      $.numComplexBranchHeads is rw;
  has TMBranchHeadRec  $!branchHeadTbl;
  has CArray[XrmQuark] $!quarkTbl;                    #= table of quarkified rhs
  has State            $!complexBranchHeadTbl;
}
constant TMComplexStateTree is export := TMComplexStateTreeRec;

class TMParseStateTreeRec is repr<CStruct> is export {
  has uint             $.isSimple                  is rw; #= b:1;
  has uint             $.isAccelerator             is rw; #= b:1;
  has uint             $.mappingNotifyInterest     is rw; #= b:1;
  has uint             $.isStackQuarks             is rw; #= b:1;
  has uint             $.isStackBranchHeads        is rw; #= b:1;
  has uint             $.isStackComplexBranchHeads is rw; #= b:1;
  has uint             $.unused                    is rw; #= b:10; to ensure correct alignment
  has TMShortCard      $.numBranchHeads            is rw;
  has TMShortCard      $.numQuarks                 is rw; #= Number of entries in quarkTbl
  has TMShortCard      $.numComplexBranchHeads     is rw;
  has TMBranchHeadRec  $!branchHeadTbl;
  has CArray[XrmQuark] $!quarkTbl;                                   #- table of quarkified rhs
  has State            $!complexBranchHeadTbl;
  has TMShortCard      $.branchHeadTblSize         is rw; #=
  has TMShortCard      $.quarkTblSize              is rw; #=  total size of quarkTbl
  has TMShortCard      $.complexBranchHeadTblSize  is rw; #=
  has State            $!head;
}

class TMStateTreeRec is repr<CUnion> is export {
  HAS TMSimpleStateTreeRec  $.simple;
  HAS TMParseStateTreeRec   $.parse;
  HAS TMComplexStateTreeRec $.complex;
}
constant TMStateTree     is export := TMStateTreeRec;

class TMStateTreeList is repr<CPointer> is export { * }

class TranslationData {
	has Str              $!hasBindings  ;
	has Str              $!operation    ;
	has TMShortCard      $!numStateTrees;
	has TranslationData  $!composers    ;
	has EventMask        $!eventMask    ;
	has TMStateTree      $!stateTreeTbl ;
}
constant XtTranslations is export := Pointer;  #= TranslationData *

class XtTMRec is repr<CStruct> is export {
  has XtTranslations  $!translations;        #= private to Translation Manager
  has XtBoundActions  $!proc_table;          #= procedure bindings for actions
  has XtStateRec      $!current_state;       #= Translation Manager state ptr
  has uint64          $.lastEventTime is rw;
}

class CorePart {
	has Widget         $!self               ;
	has WidgetClass    $!widget_class       ;
	has Widget         $!parent             ;
	has XrmName        $!xrm_name           ;
	has Boolean        $!being_destroyed    ;
	has XtCallbackList $!destroy_callbacks  ;
	has XtPointer      $!constraints        ;
	has Position       $!x                  ;
	has Position       $!y                  ;
	has Dimension      $!width              ;
	has Dimension      $!height             ;
	has Dimension      $!border_width       ;
	has Boolean        $!managed            ;
	has Boolean        $!sensitive          ;
	has Boolean        $!ancestor_sensitive ;
	has XtEventTable   $!event_table        ;
	has XtTMRec        $!tm                 ;
	has XtTranslations $!accelerators       ;
	has Pixel          $!border_pixel       ;
	has Pixmap         $!border_pixmap      ;
	has WidgetList     $!popup_list         ;
	has Cardinal       $!num_popups         ;
	has String         $!name               ;
	has Screen         $!screen             ;
	has Colormap       $!colormap           ;
	has Window         $!window             ;
	has Cardinal       $!depth              ;
	has Pixel          $!background_pixel   ;
	has Pixmap         $!background_pixmap  ;
	has Boolean        $!visible            ;
	has Boolean        $!mapped_when_managed;
}

# cw: Declaration of XtPointer is crashing Rakudo with an LTA:
#
#  ===SORRY!===
#  Type check failed in binding to parameter '<anon>'; expected Any but got X11::Raw::Structs::XtPointer (X11::Raw::Structs::X...)
#
class GripPart is repr<CStruct> is export {
  has XtCallbackList $!grip_action;
  #HAS XtPointer      @.pad[4]       is CArray;
  has XtPointer      $!pointer1;
  has XtPointer      $!pointer2;
  has XtPointer      $!pointer3;
  has XtPointer      $!pointer4;
}

class ApplicationShellClassPart {
  has XtPointer $.extension;
}

class FormClassPart is repr<CStruct> is export {
  has Pointer $.layout;  #= & (FormWidget, uint, uint, Bool --> Boolean);
}

class AsciiClassPart {
  has XtPointer $.extension;
}

class AsciiDiskClassPart {
  has XtPointer $.extension;
}

class AsciiStringClassPart {
  has XtPointer $.extension;
}

class BoxClassPart {
  has XtPointer $.extension;
}

class CommandClassPart {
  has XtPointer $.extension;
}

class DialogClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class GripClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class LabelClassPart {
  has XtPointer $.extension;
}

class ListClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class MenuButtonClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}
constant MenuButtonClass is export := MenuButtonClassPart;

class PannerClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class ScrollbarClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class SessionShellClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class ShellClassPart {
  has XtPointer $.extension;
}

class SimpleClassPart {
  has Pointer   $.change_sensitive; #= fp:(Widget --> Boolean) -- ort:Bool
  has XtPointer $.extension;
}

class SimpleMenuClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class SmeBSBClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class StripChartClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class TemplateClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class TextClassPart {
  has XtPointer $.extension;
}

class TipClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class ToggleClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class TopLevelShellClassPart {
  has XtPointer $.extension;
}

class TransientShellClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class VendorShellClassPart {
  has XtPointer $.extension;
}

class ViewportClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class WMShellClassPart {
  has XtPointer $.extension;
}

class XawVendorShellExtClassPart is repr<CStruct> is export {
  has XtPointer $.extension;
}

class DialogClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has FormClassPart       $!form_class      ;
	has DialogClassPart     $!dialog_class    ;
}

class FormConstraintsPart is repr<CStruct> is export { ... }

constant DialogConstraintsPart is export := DialogClassPart;

class DialogConstraintsRec is repr<CStruct> is export {
	has FormConstraintsPart   $!form  ;
	has DialogConstraintsPart $!dialog;
}

class DialogPart is repr<CStruct> is export {
	has String    $!label ;
	has String    $!value ;
	has Pixmap    $!icon  ;
	has Widget    $!iconW ;
	has Widget    $!labelW;
	has Widget    $!valueW;
	has XtPointer $!pad   ;
}

class FormPart is repr<CStruct> is export {
  has  int        $.default_spacing  is rw; #= default distance between children
  has  Dimension  $.old_width        is rw; #= reference value for *_virtual
  has  Dimension  $.old_height       is rw;
  has  int        $.no_refigure      is rw; #= no re-layout while > 0
  has  Boolean    $.needs_relayout   is rw; #= next time no_refigure == 0
  has  Boolean    $.resize_in_layout is rw; #= should layout() do geom request?
  has  Dimension  $.preferred_width  is rw; #= cached from layout
  has  Dimension  $.preferred_height is rw; #= cached from layout
  has  Boolean    $.resize_is_no_op  is rw; #= Causes resize to take not action
}

class MenuButtonPart is repr<CStruct> is export {
  has String    $.menu_name;
  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}


class DialogRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has FormPart       $!form      ;
	has DialogPart     $!dialog    ;
}

class EventSeq is repr<CStruct> is export {
	has Event    $!event  ;
	has State    $!state  ;
	has EventSeq $!next   ;
	has Actions  $!actions;
}

class ExtensionSelectorRec is repr<CStruct> is export {
	has Pointer    $!proc       ; #= XtExtensionSelectProc
	has int        $!min        ;
	has int        $!max        ;
	has XtPointer  $!client_data;
}
constant ExtSelectRec is export := ExtensionSelectorRec;

class ExtentInfo is repr<CStruct> is export {
	has DrawDirection $.drawDirection  is rw;
	has int           $.fontAscent     is rw;
	has int           $.fontDescent    is rw;
	has int           $.overallAscent  is rw;
	has int           $.overallDescent is rw;
	has int           $.overallWidth   is rw;
	has int           $.overallLeft    is rw;
	has int           $.overallRight   is rw;
}

class FPEFunctions is repr<CStruct> is export {
	has Pointer  $!name_check                  ; #= NameCheckFunc
	has Pointer  $!init_fpe                    ; #= InitFpeFunc
	has Pointer  $!reset_fpe                   ; #= ResetFpeFunc
	has Pointer  $!free_fpe                    ; #= FreeFpeFunc
	has Pointer  $!open_font                   ; #= OpenFontFunc
	has Pointer  $!close_font                  ; #= CloseFontFunc
	has Pointer  $!list_fonts                  ; #= ListFontsFunc
	has Pointer  $!start_list_fonts_and_aliases; #= StartLaFunc
	has Pointer  $!list_next_font_or_alias     ; #= NextLaFunc
	has Pointer  $!start_list_fonts_with_info  ; #= StartLfwiFunc
	has Pointer  $!list_next_font_with_info    ; #= NextLfwiFunc
	has Pointer  $!wakeup_fpe                  ; #= WakeupFpeFunc
	has Pointer  $!client_died                 ; #= ClientDiedFunc
	has Pointer  $!load_glyphs                 ; #= LoadGlyphsFunc
	has Pointer  $!set_path_hook               ; #= SetPathFunc
}

class FSOffset is repr<CStruct> is export {
	has int $!position;
	has int $!length  ;
}

class FSPropInfo is repr<CStruct> is export {
	has int $!num_offsets;
	has int $!data_len   ;
}

class FSPropOffset is repr<CStruct> is export {
	has FSOffset $!name ;
	has FSOffset $!value;
	has Str      $!type ;
}

class AlternateServer is repr<CStruct> is export {
  has Boolean $.subset is rw; #= Bool here will be interpreted as the Raku type!!
  has Str     $.name        ;
}

class FSQEvent       is repr<CStruct> is export { ... }
class XtransConnInfo is repr<CStruct> is export { ... }

class FSExtData is repr<CStruct> is export {
  has  int       $.number        is rw; #= number returned by FSRegisterExtension
  has  FSExtData $!next;                #= next item on list of data for structure
  has  Pointer   $!free_private;        #= & (Str --> int); called to free private storage
  has  Str       $!private_data;        #= data private to this extension.
}

class FSExtCodes is repr<CStruct> is export {
  has  int         $.extension    is rw;   #= extension number
  has  int         $.major_opcode is rw;   #= major op-code assigned by server
  has  int         $.first_event  is rw;   #= first event number for the extension
  has  int         $.first_error  is rw;   #= first error number for the extension
}

class FSExtent is repr<CStruct> is export {
  has  FSExtent    $!next;         #= next in list
  has  FSExtCodes  $!codes;        #= public information, all extension told
  has  Pointer     $!close_server; #= (FSServer *, FSExtCodes *                            --> int) - routine to call when connection
  has  Pointer     $!error       ; #= (FSServer *, fsError *,    FSExtCodes *, int *       --> int) - who to call when an error occurs
  has  Pointer     $!error_string; #= (FSServer *, int,          FSExtCodes *, char *, int --> int) - outine to supply error string
  has  Str         $!name;
}
constant FSExtension is export := FSExtent;

class FSServer is repr<CStruct> is export {
  has  FSServer        $!next;
  has  int             $.fd                    is rw;
  has  int             $.proto_version         is rw;
  has  Str             $.vendor                is rw;
  has  int             $.byte_order            is rw;
  has  int             $.vnumber               is rw;
  has  int             $.release               is rw;
  has  int             $.resource_id           is rw;
  has  FSQEvent        $!head;
  has  FSQEvent        $!tail;
  has  int             $.qlen                  is rw;
  has  uint64          $.last_request_read     is rw;
  has  uint64          $.request               is rw;
  has  Str             $!last_req;
  has  Str             $!buffer;
  has  Str             $!bufptr;
  has  Str             $!bufmax;
  has  uint            $.max_request_size      is rw;
  has  Str             $!server_name;
  has  Str             $!auth_data;
  has  AlternateServer $!a1lternate_servers;
  has  int             $.num_alternates;
  has  FSExtData       $!ext_data;
  has  FSExtension     $!ext_procs;
  has  int             $.ext_number;
  HAS  Pointer         @.event_vec[132]       is CArray; #=  (FSServer *, FSEvent *, fsEvent * --> Bool);
  HAS  Pointer         @.wire_vec[132]        is CArray; #=  (FSServer *, FSEvent *, fsEvent * --> Status);
  has  Pointer         $!unused_1;                       #= previously scratch_buffer
  has  uint64          $!unused_2;                       #= previously scratch_length
  has  Pointer         $!synchandler;                    #= FSSyncHandler;
  has  uint64          $.flags                is rw;
  has  XtransConnInfo  $!trans_conn;                     #= transport connection object
}

class FSAnyEvent is repr<CStruct> is export {
  has int      $.type       is rw;
  has uint64   $.serial     is rw;
  has Boolean  $.send_event is rw; #= Bool will be interpreted as the Raku type!
  has FSServer $!server;
}

class FSEvent is repr<CUnion> {
  has int        $.type   is rw;
  HAS FSAnyEvent $.fsany;
}

class FSQEvent {
	has FSQEvent $!next ;
	has FSEvent  $!event;
}

class FSChar2b is repr<CStruct> is export {
  has uint8 $.high is rw;
  has uint8 $.low  is rw;
}

class FSRange is repr<CStruct> is export {
	has FSChar2b $!min_char;
	has FSChar2b $!max_char;
}

class FSXCharInfo is repr<CStruct> is export {
	has short $!left      ;
	has short $!right     ;
	has short $!width     ;
	has short $!ascent    ;
	has short $!descent   ;
	has short $!attributes;
}

class FillPolyReq is repr<CStruct> is export {
	has CARD8    $!reqType  ;
	has BYTE     $!pad      ;
	has CARD16   $!length   ;
	has Drawable $!drawable ;
	has GContext $!gc       ;
	has BYTE     $!shape    ;
	has BYTE     $!coordMode;
	has CARD16   $!pad1     ;
}

class FontEnc is repr<CStruct> is export { ... }

class FontMap is repr<CStruct> is export {
  has int     $.type is rw;   #= the type of the mapping
  has int     $.pid  is rw;
  has int     $.eid  is rw;   #= the identification of the mapping
  has Pointer $!recode;       #= (unsigned, void * --> unsigned) - mapping function
  has Pointer $!name;         #= (unsigned, void * --> Str) - function returning glyph names
  has Pointer $!client_data;  #= second parameter of the two above
  has FontMap $!next;         #= link to next element in list
  has FontEnc $!encoding;
}

class FontEnc {
	has Str      $!name     ;
	has Str      $!aliases  ;
	has int      $!size     ;
	has int      $!row_size ;
	has FontMap  $!mappings ;
	has FontEnc  $!next     ;
	has int      $!first    ;
	has int      $!first_col;
}

class FontNames is repr<CStruct> is export {
	has int  $!nnames;
	has int  $!size  ;
	has int  $!length;
	has Str  $!names ;
}

class FontResolution is repr<CStruct> is export {
	has short $!x_resolution;
	has short $!y_resolution;
	has short $!point_size  ;
}

class FormClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has FormClassPart       $!form_class      ;
}

class FormConstraintsPart {
	has XtEdgeType  $!top            ;
	has XtEdgeType  $!bottom         ;
	has XtEdgeType  $!left           ;
	has XtEdgeType  $!right          ;
	has int         $!dx             ;
	has int         $!dy             ;
	has Widget      $!horiz_base     ;
	has Widget      $!vert_base      ;
	has Boolean     $!allow_resize   ;
	has short       $!virtual_width  ;
	has short       $!virtual_height ;
	has Position    $!new_x          ;
	has Position    $!new_y          ;
	has LayoutState $!layout_state   ;
	has Boolean     $!deferred_resize;
	has short       $!virtual_x      ;
	has short       $!virtual_y      ;
	has XtPointer   $!pad            ;
}

class FormConstraintsRec is repr<CStruct> is export {
	has FormConstraintsPart $!form;
}

class FormRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has FormPart       $!form      ;
}

class GetBugMode is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!mitReqType;
	has CARD16 $!length    ;
}

class GripClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has GripClassPart   $!grip_class  ;
}

class GripRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has GripPart   $!grip  ;
}

class HookObjClassPart is repr<CStruct> is export {
	has int $!unused;
}

class HookObjClassRec is repr<CStruct> is export {
	has ObjectClassPart  $!object_class;
	has HookObjClassPart $!hook_class  ;
}

class HookObjPart is repr<CStruct> is export {
	has XtCallbackList $!createhook_callbacks  ;
	has XtCallbackList $!changehook_callbacks  ;
	has XtCallbackList $!confighook_callbacks  ;
	has XtCallbackList $!geometryhook_callbacks;
	has XtCallbackList $!destroyhook_callbacks ;
	has WidgetList     $!shells                ;
	has Cardinal       $!num_shells            ;
	has Cardinal       $!max_shells            ;
	has Screen         $!screen                ;
}

class HookObjRec is repr<CStruct> is export {
	has ObjectPart  $!object;
	has HookObjPart $!hooks ;
}

class IcePingWait is repr<CStruct> is export {
	has Pointer      $!ping_reply_proc; #= IcePingReplyProc
	has IcePointer   $!client_data    ;
	has IcePingWait  $!next           ;
}

class IceReplyWaitInfo is repr<CPointer> is export {
  has uint64       $.sequence_of_request     is rw;
  has int          $.major_opcode_of_request is rw;
  has int          $.minor_opcode_of_request is rw;
  has IcePointer   $!reply;
}

class IceSavedReplyWait is repr<CStruct> is export {
	has IceReplyWaitInfo  $!reply_wait ;
	has Boolean           $!reply_ready; #= Was Bool, but that conflicts.
	has IceSavedReplyWait $!next       ;
}

class InputEvent is repr<CStruct> is export {
	has Pointer       $!ie_proc     ; #= XtInputCallbackProc
	has XtPointer     $!ie_closure  ;
	has InputEvent    $!ie_next     ;
	has InputEvent    $!ie_oq       ;
	has XtAppContext  $!app         ;
	has int           $!ie_source   ;
	has XtInputMask   $!ie_condition;
}

class LabelClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has LabelClassPart  $!label_class ;
}

class LabelRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has LabelPart  $!label ;
}

class LangProc is repr<CStruct> is export {
	has Pointer   $!proc   ; #= XtLanguageProc
	has XtPointer $!closure;
}
constant LangProcRec is export := LangProc;

class LbxAllowMotion is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!num       ;
}

class LbxBeginLargeRequest is repr<CStruct> is export {
	has CARD8  $!reqType       ;
	has CARD8  $!lbxReqType    ;
	has CARD16 $!length        ;
	has CARD32 $!largeReqLength;
}

class LbxChangeProperty is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has Window $!window    ;
	has Atom   $!property  ;
	has Atom   $!type      ;
	has CARD8  $!format    ;
	has CARD8  $!mode      ;
	has BYTE   $!pad       ;
	has CARD32 $!nUnits    ;
}

class LbxCloseClient is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!client    ;
}

class LbxCloseEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!lbxType       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!client        ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
	has CARD32 $!pad6          ;
}

class LbxCopyArea is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!srcCache  ;
	has CARD8  $!cacheEnts ;
}

class LbxCopyPlane is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!bitPlane  ;
	has CARD8  $!srcCache  ;
	has CARD8  $!cacheEnts ;
}

class LbxDelta is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!diffs     ;
	has CARD8  $!cindex    ;
}

class LbxEndLargeRequest is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxFillPoly is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!cacheEnts ;
	has BYTE   $!shape     ;
	has CARD8  $!padBytes  ;
}

class LbxFreeCellsEvent is repr<CStruct> is export {
	has BYTE     $!type          ;
	has BYTE     $!lbxType       ;
	has CARD16   $!sequenceNumber;
	has Colormap $!colormap      ;
	has CARD32   $!pixelStart    ;
	has CARD32   $!pixelEnd      ;
	has CARD32   $!pad1          ;
	has CARD32   $!pad2          ;
	has CARD32   $!pad3          ;
	has CARD32   $!pad4          ;
}

class LbxGetKeyboardMapping is repr<CStruct> is export {
	has CARD8   $!reqType     ;
	has CARD8   $!lbxReqType  ;
	has CARD16  $!length      ;
	has KeyCode $!firstKeyCode;
	has CARD8   $!count       ;
	has CARD16  $!pad1        ;
}

class LbxGetModifierMapping is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxGetProperty is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has Window $!window    ;
	has Atom   $!property  ;
	has Atom   $!type      ;
	has CARD8  $!delete    ;
	has BYTE   $!pad       ;
	has CARD32 $!longOffset;
	has CARD32 $!longLength;
}

class LbxGetWinAttrAndGeom is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!id        ;
}

class LbxImageText is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!cacheEnts ;
	has CARD8  $!nChars    ;
}

class LbxIncrementPixel is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!cmap      ;
	has CARD32 $!pixel     ;
}

class LbxInternAtoms is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD16 $!num       ;
}

class LbxInvalidateTag is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!tag       ;
}

class LbxInvalidateTagEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!lbxType       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!tag           ;
	has CARD32 $!tagType       ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class LbxLargeRequestData is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxListenToAllEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!lbxType       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
	has CARD32 $!pad6          ;
	has CARD32 $!pad7          ;
}

class LbxListenToOneEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!lbxType       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!client        ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
	has CARD32 $!pad6          ;
}

class LbxModifySequence is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!adjust    ;
}

class LbxNewClient is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!client    ;
}

class LbxPolyPoint is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!cacheEnts ;
	has CARD8  $!padBytes  ;
}

class LbxPolyText is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD8  $!cacheEnts ;
}

class LbxPutImage is repr<CStruct> is export {
	has CARD8  $!reqType          ;
	has CARD8  $!lbxReqType       ;
	has CARD16 $!length           ;
	has CARD8  $!compressionMethod;
	has CARD8  $!cacheEnts        ;
	has CARD8  $!bitPacked        ;
}

class LbxQueryExtension is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!nbytes    ;
}

class LbxQueryExtensionReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!numReqs       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has BOOL   $!present       ;
	has CARD8  $!major_opcode  ;
	has CARD8  $!first_event   ;
	has CARD8  $!first_error   ;
	has CARD32 $!pad0          ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
}

class LbxQueryFont is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!fid       ;
}

class LbxQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxReleaseCmapEvent is repr<CStruct> is export {
	has BYTE     $!type          ;
	has BYTE     $!lbxType       ;
	has CARD16   $!sequenceNumber;
	has Colormap $!colormap      ;
	has CARD32   $!pad1          ;
	has CARD32   $!pad2          ;
	has CARD32   $!pad3          ;
	has CARD32   $!pad4          ;
	has CARD32   $!pad5          ;
	has CARD32   $!pad6          ;
}

class LbxSendTagDataEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!lbxType       ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!tag           ;
	has CARD32 $!tagType       ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class LbxStartProxy is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxStopProxy is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
}

class LbxSwitch is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!lbxReqType;
	has CARD16 $!length    ;
	has CARD32 $!client    ;
}

class LbxSwitchEvent is repr<CStruct> is export {
	has BYTE   $!type   ;
	has BYTE   $!lbxType;
	has CARD16 $!pad    ;
	has CARD32 $!client ;
}

class LbxTagData is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!lbxReqType ;
	has CARD16 $!length     ;
	has XID    $!tag        ;
	has CARD32 $!real_length;
}

class ListClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has ListClassPart   $!list_class  ;
}

class XFontProp is repr<CStruct> is export {
  has Atom   $!name;
  has uint64 $.card32 is rw;
}

class FontPropRec is repr<CStruct>is export  {
  has int64 $.name  is rw;
  has int64 $.value is rw; #= assumes ATOM is not larger than INT32
}
constant FontProp is export := FontPropRec;

class FontInfoRec is repr<CStruct> is export {
  has uint16      $.firstCol        is rw;
  has uint16      $.lastCol         is rw;
  has uint16      $.firstRow        is rw;
  has uint16      $.lastRow         is rw;
  has uint16      $.defaultCh       is rw;
  has uint        $.noOverlap       is rw; #= b:1;
  has uint        $.terminalFont    is rw; #= b:1;
  has uint        $.constantMetrics is rw; #= b:1;
  has uint        $.constantWidth   is rw; #= b:1;
  has uint        $.inkInside       is rw; #= b:1;
  has uint        $.inkMetrics      is rw; #= b:1;
  has uint        $.allExist        is rw; #= b:1;
  has uint        $.drawDirection   is rw; #= b:2;
  has uint        $.cachable        is rw; #= b:1;
  has uint        $.anamorphic      is rw; #= b:1;
  has short       $.maxOverlap      is rw;
  has short       $.pad             is rw;
  has xCharInfo   $!maxbounds;
  has xCharInfo   $!minbounds;
  has xCharInfo   $!ink_maxbounds;
  has xCharInfo   $!ink_minbounds;
  has short       $.fontAscent      is rw;
  has short       $.fontDescent     is rw;
  has int         $.nprops          is rw;
  has FontProp    $!props;
  has Str         $!isStringProp;
}
constant FontInfo is export := FontInfoRec;

class FontPathElementRec is repr<CStruct> is export {
  has int     $.name_length is rw;
  has Str     $!name;
  has int     $.type        is rw;
  has int     $.refcount    is rw;
  has Pointer $!private;
}
constant FontPathElement is export := FontPathElementRec;

class FontRec {
    has int             $.refcnt         is rw;
    HAS FontInfoRec     $!info;
    has uint8           $.bit            is rw;
    has uint8           $.byte           is rw;
    has uint8           $.glyph          is rw;
    has uint8           $.scan           is rw;
    has fsBitmapFormat  $.format         is rw;
    has Pointer         $!get_glyphs;           #= int  (FontPtr         /* font */, unsigned long   /* count */, unsigned char * /* chars */, FontEncoding    /* encoding */, unsigned long * /* count */, CharInfoPtr *   /* glyphs */);
    has Pointer         $!get_metrics;          #= int  (FontPtr         /* font */, unsigned long   /* count */, unsigned char * /* chars */, FontEncoding    /* encoding */, unsigned long * /* count */, xCharInfo **    /* glyphs */);
    has Pointer         $!unload_font;          #= void (FontPtr         /* font */);
    has Pointer         $!unload_glyphs;        #= void (FontPtr         /* font */);
    has FontPathElement $!fpe;
    has Pointer         $!svrPrivate;
    has Pointer         $!fontPrivate;
    has Pointer         $!fpePrivate;
    has int             $.maxPrivate     is rw;
    has CArray[Pointer] $!devPrivates;
}
#constant Font is export := FontRec;

class XCharStruct is repr<CStruct> is export {
  has short  $.lbearing   is rw; #= origin to left edge of raster
  has short  $.rbearing   is rw; #= origin to right edge of raster
  has short  $.width      is rw; #= advance to next char's origin
  has short  $.ascent     is rw; #= baseline to top edge of raster
  has short  $.descent    is rw; #= baseline to bottom edge of raster
  has ushort $.attributes is rw; #= per char flags (not predefined)
}

class XFontStruct {
  has XExtData    $!ext_data               ; #= hook for extension to hang data
  has FT_UInt     $.fid               is rw; #= ot:Font - Font id for this font
  has uint        $.direction         is rw; #= hint about direction the font is painted
  has uint        $.min_char_or_byte2 is rw; #= first character
  has uint        $.max_char_or_byte2 is rw; #= last character
  has uint        $.min_byte1         is rw; #= first row that exists
  has uint        $.max_byte1         is rw; #= last row that exists
  has Boolean     $.all_chars_exist   is rw; #= Was Bool - flag if all characters have non-zero size
  has uint        $.default_char      is rw; #= char to print for undefined character
  has int         $.n_properties      is rw; #= how many properties there are
  has XFontProp   $!properties             ; #= pointer to array of additional properties
  HAS XCharStruct $!min_bounds             ; #= minimum bounds over all existing char
  HAS XCharStruct $!max_bounds             ; #= maximum bounds over all existing char
  HAS XCharStruct $!per_char               ; #= first_char to last_char information
  has int         $.ascent            is rw; #= log. extent above baseline for spacing
  has int         $.descent           is rw; #= log. descent below baseline for spacing
}

class ListPart is repr<CStruct> is export {
  has Pixel          $.foreground        is rw;
  has Dimension      $.internal_width    is rw; #= if not 3d, user sets directly */
  has Dimension      $.internal_height   is rw;
  has Dimension      $.column_space      is rw; #= half of *_space is add on top/bot/left of */
  has Dimension      $.row_space         is rw; #= each item's text bounding box half added to longest for right */
  has int            $.default_cols      is rw;
  has Boolean        $.force_cols        is rw;
  has Boolean        $.paste             is rw;
  has Boolean        $.vertical_cols     is rw;
  has int            $.longest           is rw; #= in pixels */
  has int            $.nitems            is rw;
  has XFontStruct    $!font;
  has XFontSet       $!fontset;                 #= Sheeran, Omron KK, 93/03/05 */
  has String         $!list;                    #= for i18n, always in multibyte format */
  has XtCallbackList $!callback;

  # Private
  has int            $.is_highlighted    is rw; #= set to the item currently highlighted */
  has int            $.highlight         is rw; #= set to the item that should be highlighted */
  has int            $.col_width         is rw; #= width of each column */
  has int            $.row_height        is rw; #= height of each row */
  has int            $.nrows             is rw; #= number of rows in the list */
  has int            $.ncols             is rw; #= number of columns in the list */
  has GC             $!normgc;
  has GC             $!revgc;
  has GC             $!graygc;
  has int            $.freedoms          is rw; #= flags for resizing height and width */
  has int            $.selected          is rw;
  has Boolean        $.show_current      is rw;

  has uint8 @.pad1[
    ( nativesizeof(XtPointer) - nativesizeof(Boolean) ) +
    ( nativesizeof(XtPointer) - nativesizeof(int)     )
  ] is CArray;

  #has XtPointer pad2[2];  /* for future use and keep binary compatability */
  has XtPointer  $!pad2_1;
  has XtPointer  $!pad2_2;
}

class ListRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has ListPart   $!list  ;
}

class MenuButtonClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has SimpleClassPart     $!simple_class    ;
	has LabelClassPart      $!label_class     ;
	has CommandClassPart    $!command_class   ;
	has MenuButtonClassPart $!menuButton_class;
}

class MenuButtonRec is repr<CStruct> is export {
	has CorePart       $!core       ;
	has SimplePart     $!simple     ;
	has LabelPart      $!label      ;
	has CommandPart    $!command    ;
	has MenuButtonPart $!menu_button;
}

class ModToKeysymTable is repr<CStruct> is export {
	has Modifiers $!mask ;
	has int       $.count is rw;
	has int       $.idx   is rw;
}

class MultiSinkClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class MultiSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart    $!object_class    ;
	has TextSinkClassPart  $!text_sink_class ;
	has MultiSinkClassPart $!multi_sink_class;
}

class MultiSinkPart is repr<CStruct> is export {
  has Boolean            $.echo                is rw;
  has Boolean            $.display_nonprinting is rw;

  # Private
  has GC                 $!normgc;
  has GC                 $!invgc;
  has GC                 $!xorgc;
  has XawTextPosition    $!cursor_position;
  has XawTextInsertState $!laststate;

  # X11Cursor location
  has short              $!cursor_x,
  has short              $!cursor_y;
  has XFontSet           $!fontset;         #= font set to draw

  # has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer          $!pad1;
  has XtPointer          $!pad2;
  has XtPointer          $!pad3;
  has XtPointer          $!pad4;
}

class MultiSinkRec is repr<CStruct> is export {
	has ObjectPart    $!object    ;
	has TextSinkPart  $!text_sink ;
	has MultiSinkPart $!multi_sink;
}

class MultiSrcClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class OverrideShellClassPart is repr<CStruct> is export {
  has XtPointer $!extension;
}

class PanedClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class PortholeClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class RepeaterClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class MultiSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSrcClassPart  $!text_src_class ;
	has MultiSrcClassPart $!multi_src_class;
}

class MultiPiece is repr<CStruct> is export {
  has Str             $!text; #= The text in this buffer
  has XawTextPosition $.used; #= The number of characters of this buffer that have been used
  has MultiPiece      $.prev;
  has MultiPiece      $.next; #= linked list pointers
}

class MultiSrcPart is repr<CStruct> is export {
	has XIC             $!ic                 ;
	has XtPointer       $!string             ;
	has XawAsciiType    $!type               ;
	has XawTextPosition $!piece_size         ;
	has Boolean         $!data_compression   ;
	has XtCallbackList  $!callback           ;
	has Boolean         $!use_string_in_place;
	has int             $!multi_length       ;
	has Boolean         $!is_tempfile        ;
	has Boolean         $!changes            ;
	has Boolean         $!allocated_string   ;
	has XawTextPosition $!length             ;
	has MultiPiece      $!first_piece        ;
	has XtPointer       $!pad                ;
}

class MultiSrcRec is repr<CStruct> is export {
	has ObjectPart      $!object   ;
	has TextSrcPart     $!text_src ;
	has MultiSrcPart    $!multi_src;
}

class WidgetClassRec {
	has CoreClassPart $!core_class;
}

class ObjectClassPart {
	HAS WidgetClass      $!superclass           ;
	has String           $!class_name           ;
	has Cardinal         $!widget_size          ;
	has Pointer          $!class_initialize     ; #= XtProc
	has Pointer          $!class_part_initialize; #= XtWidgetClassProc
	has XtEnum           $!class_inited         ;
	has Pointer          $!initialize           ; #= XtInitProc
	has Pointer          $!initialize_hook      ; #= XtArgsProc
	has Pointer          $!obj1                 ; #= XtProc
	has XtPointer        $!obj2                 ;
	has Cardinal         $!obj3                 ;
	has Pointer          $!resources            ; #= tb:XtResource
	has Cardinal         $!num_resources        ;
	has XrmClass         $!xrm_class            ;
	has Boolean          $!obj4                 ;
	has XtEnum           $!obj5                 ;
	has Boolean          $!obj6                 ;
	has Boolean          $!obj7                 ;
	has Pointer          $!destroy              ; #= XtWidgetProc
	has Pointer          $!obj8                 ; #= XtProc
	has Pointer          $!obj9                 ; #= XtProc
	has Pointer          $!set_values           ; #= XtSetValuesFunc
	has Pointer          $!set_values_hook      ; #= XtArgsFunc
	has Pointer          $!obj10                ; #= XtProc
	has Pointer          $!get_values_hook      ; #= XtArgsProc
	has Pointer          $!obj11                ; #= XtProc
	has XtVersionType    $!version              ;
	has XtPointer        $!callback_private     ;
	has String           $!obj12                ;
	has Pointer          $!obj13                ; #= XtProc
	has Pointer          $!obj14                ; #= XtProc
	has XtPointer        $!extension            ;
}

class ObjectClassRec is repr<CStruct> is export {
	HAS ObjectClassPart $!object_class;
}

class ObjectPart {
	has Widget         $!self             ;
	has WidgetClass    $!widget_class     ;
	has Widget         $!parent           ;
	has XrmName        $!xrm_name         ;
	has Boolean        $!being_destroyed  ;
	has XtCallbackList $!destroy_callbacks;
	has XtPointer      $!constraints      ;
}

class ObjectRec is repr<CStruct> is export {
	HAS ObjectPart $!object;
}

class OverrideShellClassRec is repr<CStruct> is export {
	has CoreClassPart          $!core_class          ;
	has CompositeClassPart     $!composite_class     ;
	has ShellClassPart         $!shell_class         ;
	has OverrideShellClassPart $!override_shell_class;
}

class PanedConstraintsPart is repr<CStruct> is export { ... }
constant Pane is export := PanedConstraintsPart;

class PaneStack is repr<CStruct> is export {
	has PaneStack $!next      ;
	has Pane       $!pane      ;
	has int        $!start_size;
}

class PanedClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has PanedClassPart      $!paned_class     ;
}

class PanedConstraintsPart {
	has Dimension $!min              ;
	has Dimension $!max              ;
	has Boolean   $!allow_resize     ;
	has Boolean   $!show_grip        ;
	has Boolean   $!skip_adjust      ;
	has int       $!position         ;
	has Dimension $!preferred_size   ;
	has Boolean   $!resize_to_pref   ;
	has Position  $!delta            ;
	has Position  $!olddelta         ;
	has Boolean   $!paned_adjusted_me;
	has Dimension $!wp_size          ;
	has int       $!size             ;
	has Widget    $!grip             ;
}

class PanedConstraintsRec is repr<CStruct> is export {
	has PanedConstraintsPart $!paned;
}

class PanedPart is repr<CStruct> is export {
  has  Position       $.grip_indent              is rw;  #= Location of grips (offset from right margin)
  has  Boolean        $.refiguremode             is rw;  #= Whether to refigure changes right now
  has  XtTranslations $!grip_translations;               #= grip translation table
  has  Pixel          $.internal_bp              is rw;  #= color of internal borders
  has  Dimension      $.internal_bw              is rw;  #= internal border width
  has  XtOrientation  $.orientation              is rw;  #= Orientation of paned widget

  has  X11Cursor         $.cursor                   is rw;  #= Cursor for paned window
  has  X11Cursor         $.grip_cursor              is rw;  #= inactive grip cursor
  has  X11Cursor         $.v_grip_cursor            is rw;  #= inactive vert grip cursor
  has  X11Cursor         $.h_grip_cursor            is rw;  #= inactive horiz grip cursor
  has  X11Cursor         $.adjust_this_cursor       is rw;  #= active grip cursor: T
  has  X11Cursor         $.v_adjust_this_cursor     is rw;  #= active vert grip cursor: T
  has  X11Cursor         $.h_adjust_this_cursor     is rw;  #= active horiz grip cursor: T
  # vertical
  has  X11Cursor         $.adjust_upper_cursor      is rw;  #= active grip cursor: U
  has  X11Cursor         $.adjust_lower_cursor      is rw;  #= active grip cursor: D
  # horizontal
  has  X11Cursor         $.adjust_left_cursor       is rw;  #= active grip cursor: U
  has  X11Cursor         $.adjust_right_cursor      is rw;  #= active grip cursor: D
  # private
  has  Boolean        $!recursively_called;              #= for ChangeManaged
  has  Boolean        $!resize_children_to_pref;         #= override constrain resources and resize all children to preferred size
  has  int            $!start_loc;                       #= mouse origin when adjusting
  has  Widget         $!whichadd;                        #= Which pane to add changes to
  has  Widget         $!whichsub;                        #= Which pane to sub changes from
  has  GC             $!normgc;                          #= GC to use when drawing borders
  has  GC             $!invgc;                           #= GC to use when erasing borders
  has  GC             $!flipgc;                          #= GC to use when animating borders
  has  int            $!num_panes;                       #= count of managed panes
  has  PaneStack      $!stack;                           #= The pane stack for this widget

  # has XtPointer pad[4];   /* for future use and keep binary compatability
  has  XtPointer      $!pad1;
  has  XtPointer      $!pad2;
  has  XtPointer      $!pad3;
  has  XtPointer      $!pad4;
}

class PanedRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has PanedPart      $!paned     ;
}

class PannerTmpPart is repr<CStruct> is export {
  has Boolean  $.doing   is rw; #= tmp graphics in progress
  has Boolean  $.showing is rw; #= true if tmp graphics displayed
  has Position $.startx  is rw; #= initial position of slider
  has Position $.starty  is rw;
  has Position $.dx      is rw; #= offset loc for tmp graphics
  has Position $.dy      is rw;
  has Position $.x       is rw; #= location for tmp graphics
  has Position $.y       is rw;
}

class xRectangle is repr<CStruct> is export {
	has INT16  $!x     ;
	has INT16  $!y     ;
	has CARD16 $!width ;
	has CARD16 $!height;
}
constant XRectangle is export := xRectangle;

class XFontSetExtents is repr<CStruct> is export {
  HAS XRectangle  $.max_ink_extent;
  HAS XRectangle  $.max_logical_extent;
}

class XGenericEventCookie is repr<CStruct> is export {
  has realInt    $.type;         #=         - of event. Always GenericEvent
  has ulong      $.serial;       #=         - # of last requ/*est processed
  has Boolean    $.send_event;   #= ot:Bool - true if from SendEvent request
  has Display    $.display;      #=         - Display the event was read from
  has realInt    $.extension;    #=         - major opcode of extension that caused the event
  has realInt    $.evtype;       #=         - actual event type.
  has realUInt   $.cookie;
  has Pointer    $.data;
}

class XTimeCoord is repr<CStruct> is export {
  has Time  $.time is rw;
  has short $.x    is rw;
  has short $.y    is rw;
}

class Visual is repr<CStruct> is export {
  has XExtData $.ext_data;            #= hook for extension to hang data
  has VisualID $.visualid     is rw;  #= visual id of this visual
  has realInt  $.class        is rw;  #= class of screen (monochrome, etc.)
  has ulong    $.red_mask     is rw;
  has ulong    $.green_mask   is rw;
  has ulong    $.blue_mask    is rw;  #= mask values
  has realInt  $.bits_per_rgb is rw;  #= log base 2 of distinct color values
  has realInt  $.map_entries  is rw;  #= color map entries
}

class XWindowAttributes is repr<CStruct> is export {
  has int      $.x                     is rw;
  has int      $.y                     is rw; #=         - location of window
  has int      $.width                 is rw;
  has int      $.height                is rw; #=         - width and height of window
  has int      $.border_width          is rw; #=         - border width of window
  has int      $.depth                 is rw; #=         - depth of window
  has Visual   $.visual                is rw; #=         - the associated visual structure
  has Window   $.root                  is rw; #=         - root of screen containing window
  has int      $.class                 is rw; #=         - InputOutput, InputOnly
  has int      $.bit_gravity           is rw; #=         - one of bit gravity values
  has int      $.win_gravity           is rw; #=         - one of the window gravity values
  has int      $.backing_store         is rw; #=         - NotUseful, WhenMapped, Always
  has ulong    $.backing_planes        is rw; #=         - planes to be preserved if possible
  has ulong    $.backing_pixel         is rw; #=         - value to be used when restoring planes
  has Boolean  $.save_under            is rw; #= ot:Bool - boolean, should bits under be saved?
  has Colormap $.colormap              is rw; #=         - color map to be associated with window
  has Boolean  $.map_installed         is rw; #= ot:Bool - boolean, is color map currently installed
  has int      $.map_state             is rw; #=         - IsUnmapped, IsUnviewable, IsViewable
  has long     $.all_event_masks       is rw; #=         - set of events all people have interest in
  has long     $.your_event_mask       is rw; #=         - my event mask
  has long     $.do_not_propagate_mask is rw; #=         - set of events that should not propagate
  has Boolean  $.override_redirect     is rw; #= ot:Bool - boolean value for override-redirect
  has Screen   $.screen                is rw; #=         - back pointer to correct screen
} ;

class XKeyboardState is repr<CStruct> is export {
  has realInt  $.key_click_percent  is rw;
  has realInt  $.bell_percent       is rw;
  has realUInt $.bell_pitch         is rw;
  has realUInt $.bell_duration      is rw;
  has ulong    $.led_mask           is rw;
  has realInt  $.global_auto_repeat is rw;
  HAS char     @.auto_repeats[32]   is CArray;
}

class PannerPart is repr<CStruct> is export {
  has XtCallbackList $!report_callbacks;             #= callback/Callback
  has Boolean        $.allow_off         is rw;      #= allowOff/AllowOff
  has Boolean        $.resize_to_pref    is rw;      #= resizeToPreferred/Boolean
  has Pixel          $.foreground        is rw;      #= foreground/Foreground
  has Pixel          $.shadow_color      is rw;      #= shadowColor/ShadowColor
  has Dimension      $.shadow_thickness  is rw;      #= shadowThickness/ShadowThickness
  has Dimension      $.default_scale     is rw;      #= defaultScale/DefaultScale
  has Dimension      $.line_width        is rw;      #= lineWidth/LineWidth
  has Dimension      $.canvas_width      is rw;      #= canvasWidth/CanvasWidth
  has Dimension      $.canvas_height     is rw;      #= canvasHeight/CanvasHeight
  has Position       $.slider_x          is rw;      #= sliderX/SliderX
  has Position       $.slider_y          is rw;      #= sliderY/SliderY
  has Dimension      $.slider_width      is rw;      #= sliderWidth/SliderWidth
  has Dimension      $.slider_height     is rw;      #= sliderHeight/SliderHeight
  has Dimension      $.internal_border   is rw;      #= internalBorderWidth/BorderWidth
  has String         $.stipple_name      is rw;      #= backgroundStipple/BackgroundStip
  # Private
  has GC             $!slider_gc;                    #= background of slider
  has GC             $!shadow_gc;                    #= edge of slider and shadow
  has GC             $!xor_gc;                       #= for doing XOR tmp graphics
  has double         $!haspect;                      #= aspect ratio of core to canvas
  has double         $!vaspect;
  has Boolean        $!rubber_band;                  #= true = rubber band, false = move
  HAS PannerTmpPart  $!tmp;
  has Position       $!knob_x;                       #= real upper left of knob in canvas
  has Position       $!knob_y;
  has Dimension      $!knob_width;                   #= real size of knob in canvas
  has Dimension      $!knob_height;
  has Boolean        $!shadow_valid;                 #= true if rects are valid
  has XRectangle     @.shadow_rects[2]   is CArray;  #= location of shadows
  has Position       $!last_x;                       #= previous location of knob
  has Position       $!last_y;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer      $!pad1;
  has XtPointer      $!pad2;
  has XtPointer      $!pad3;
  has XtPointer      $!pad4;
}

class PannerClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has PannerClassPart $!panner_class;
}

class PannerRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has PannerPart $!panner;
}

class PanoramiXGetScreenCount is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!panoramiXReqType;
	has CARD16 $!length          ;
	has CARD32 $!window          ;
}

class PanoramiXGetScreenSize is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!panoramiXReqType;
	has CARD16 $!length          ;
	has CARD32 $!window          ;
	has CARD32 $!screen          ;
}

class PanoramiXGetState is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!panoramiXReqType;
	has CARD16 $!length          ;
	has CARD32 $!window          ;
}

class PanoramiXQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!panoramiXReqType;
	has CARD16 $!length          ;
	has CARD8  $!clientMajor     ;
	has CARD8  $!clientMinor     ;
	has CARD16 $!unused          ;
}

class ParamRec is repr<CStruct> is export {
	has Atom $!selection;
	has Atom $!param    ;
}
constant Param is export := ParamRec;

class ParamInfoRec is repr<CStruct> is export {
	has int   $!count    ;
	has Param $!paramlist;
}

class ScreenFormat is repr<CStruct> is export {
  has XExtData $.ext_data;              #= hook for extension to hang data
  has int      $.depth          is rw;  #= depth of this image format
  has int      $.bits_per_pixel is rw;  #= bits/pixel at this depth
  has int      $.scanline_pad   is rw;  #= scanline must padded to this multiple
}

class InternalCallbackRec is repr<CStruct> is export {
  has ushort $.count      is rw;
  has char   $.is_padded  is rw;  #= contains NULL padding for external form
  has char   $.call_state is rw;  #= combination of _XtCB{FreeAfter}Calling
  has uint   $.align_pad  is rw;  #= padding to align callback list
}
constant InternalCallbackList is export := InternalCallbackRec;

class KeyCacheRec is repr<CStruct> is export {
  has uchar   @.modifiers_return[256]     is CArray; #= constant per KeyCode, key proc
  has KeyCode @.keycode[TMKEYCACHESIZE]   is CArray;
  has uchar   @.modifiers[TMKEYCACHESIZE] is CArray;
  has KeySym  @.keysym[TMKEYCACHESIZE]    is CArray;
}
constant TMKeyCache is export := KeyCacheRec;

class TMKeyContextRec is repr<CStruct> is export {
	has XEvent     $!event    ;
	has long       $!serial   ;
	has KeySym     $!keysym   ;
	has Modifiers  $!modifiers;
	has TMKeyCache $!keycache ;
}

class Heap is repr<CStruct> is export {
  has Str $.start;
  has Str $.current;
  has int $.bytes_remaining;
}

class XtPerDisplayStruct is repr<CStruct> is export { ... }
constant XtPerDisplay         is export := XtPerDisplayStruct;

class XtPerDisplayInput is repr<CStruct> is export  { ... } #= L6119

class XtPerDisplayStruct {
  has InternalCallbackList     $.destroy_callbacks;
  has Region                   $.region;
  has CaseConverter            $.case_cvt;                 #= user-registered case converters */
  has Pointer                  $.defaultKeycodeTranslator; #= fp:XtKeyProc
  has XtAppContext             $.appContext;
  has ulong                    $.keysyms_serial;           #= for tracking MappingNotify events */
  has KeySym                   $.keysyms;                  #= keycode to keysym table */
  has int                      $.keysyms_per_keycode;      #= number of keysyms for each keycode*/
  has int                      $.min_keycode;              #= range of keycodes */
  has int                      $.max_keycode;
  has KeySym                   $.modKeysyms;               #= keysym values for modToKeysysm */
  has ModToKeysymTable         $.modsToKeysyms;            #= modifiers to Keysysms index table*/
  HAS uint8                    @.isModifier[32] is CArray; #= key-is-modifier-p bit table */
  has KeySym                   $.lock_meaning;             #= Lock modifier meaning */
  has Modifiers                $.mode_switch;              #= keyboard group modifiers */
  has Modifiers                $.num_lock;                 #= keyboard numlock modifiers */
  has Boolean                  $.being_destroyed;
  has Boolean                  $.rv;                       #= reverse_video resource */
  has XrmName                  $.name;                     #= resolved app name */
  has XrmClass                 $.class;                    #= application class */
  has Heap                     $.heap;
  has Pointer                  $!GClist;                   #= tb:[os:_GCrec] ;             /* support for XtGetGC */
  has CArray[CArray[Drawable]] $.pixmap_tab;               #= ditto for XtGet
  has String                   $.language;                 #= XPG language string
  has XEvent                   $.last_event;               #= last event dispatched
  has Time                     $.last_timestamp;           #= from last event dispatched
  has int                      $.multi_click_time;         #= for XtSetMultiClickTime
  has TMKeyContextRec          $.tm_context;               #= for XtGetActionKeysym
  has InternalCallbackList     $.mapping_callbacks;        #= special case for TM
  has XtPerDisplayInput        $.pdi;                      #= state for modal grabs & kbd focus
  has Pointer                  $!WWtable;                  #= os:WWTable -  window to widget table
  has CArray[Pointer]          $.per_screen_db;            #= os:XrmHashBucketRec/XrmDatabase - per screen resource databases
  has Pointer                  $.cmd_db;                   #= os:XrmHashBucketRec/XrmDatabase - db from command line, if needed
  has Pointer                  $.server_db;                #= os:XrmHashBucketRec/XrmDatabase - resource property else .Xdefaults
  has Pointer                  $.dispatcher_list;          #= fp:XtEventDispatchProc
  has ExtSelectRec             $!ext_select_list;
  has int                      $!ext_select_count;
  has Widget                   $!hook_object;
  has Atom                     $!rcm_init;                 #= ResConfig - initialize
  has Atom                     $!rcm_data;                 #= ResConfig - data atom
}

class PerDisplayTable is repr<CStruct> is export {
	has Display            $!dpy   ;
	has XtPerDisplayStruct $!perDpy;
	has PerDisplayTable    $!next  ;
}

class PortholeClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has PortholeClassPart  $!porthole_class ;
}

class PortholePart is repr<CStruct> is export {
  has XtCallbackList $.report_callbacks;  #= callback/Callback

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XPointer $!pad1;
  has XPointer $!pad2;
  has XPointer $!pad3;
  has XPointer $!pad4;
}

class PortholeRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
	has PortholePart  $!porthole ;
}

class ProcessContext is repr<CStruct> is export {
	has XtAppContext   $!defaultAppContext   ;
	has XtAppContext   $!appContextList      ;
	has ConverterTable $!globalConverterTable;
	has LangProc       $!globalLangProcRec   ;
}

class PutImageReq is repr<CStruct> is export {
	has CARD8    $!reqType ;
	has CARD8    $!format  ;
	has CARD16   $!length  ;
	has Drawable $!drawable;
	has GContext $!gc      ;
	has CARD16   $!width   ;
	has CARD16   $!height  ;
	has INT16    $!dstX    ;
	has INT16    $!dstY    ;
	has CARD8    $!leftPad ;
	has CARD8    $!depth   ;
	has CARD16   $!pad     ;
}

class QueryAdaptorsReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!padb1         ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!num_adaptors  ;
	has CARD16 $!pads3         ;
	has CARD32 $!padl4         ;
	has CARD32 $!padl5         ;
	has CARD32 $!padl6         ;
	has CARD32 $!padl7         ;
	has CARD32 $!padl8         ;
}

class QueryEncodingsReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!padb1         ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!num_encodings ;
	has CARD16 $!padl3         ;
	has CARD32 $!padl4         ;
	has CARD32 $!padl5         ;
	has CARD32 $!padl6         ;
	has CARD32 $!padl7         ;
	has CARD32 $!padl8         ;
}

class QueryExtensionReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!padb1         ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!version       ;
	has CARD16 $!revision      ;
	has CARD32 $!padl4         ;
	has CARD32 $!padl5         ;
	has CARD32 $!padl6         ;
	has CARD32 $!padl7         ;
	has CARD32 $!padl8         ;
}

class QueuedRequestRec is repr<CStruct> is export {
	has Atom       $!selection  ;
	has Atom       $!target     ;
	has Atom       $!param      ;
	has Pointer    $!callback   ; #= fp:XtSelectionCallbackProc
	has XtPointer  $!closure    ;
	has Time       $!time       ;
	has Boolean    $!incremental;
}
constant QueuedRequest is export := QueuedRequestRec;

class QueuedRequestInfoRec is repr<CStruct> is export {
	has int           $!count     ;
	has Atom          $!selections;
	has QueuedRequest $!requests  ;
}

class RectObjClassPart is repr<CStruct> is export {
	has WidgetClass       $!superclass           ;
	has String            $!class_name           ;
	has Cardinal          $!widget_size          ;
	has Pointer           $!class_initialize     ; #= fp:XtProc
	has Pointer           $!class_part_initialize; #= fp:XtWidgetClassProc
	has Pointer           $!class_inited         ; #= fp:XtEnum
	has Pointer           $!initialize           ; #= fp:XtInitProc
	has Pointer           $!initialize_hook      ; #= fp:XtArgsProc
	has Pointer           $!rect1                ; #= fp:XtProc
	has XtPointer         $!rect2                ;
	has Cardinal          $!rect3                ;
	has XtResourceList    $!resources            ;
	has Cardinal          $!num_resources        ;
	has XrmClass          $!xrm_class            ;
	has Boolean           $!rect4                ;
	has XtEnum            $!rect5                ;
	has Boolean           $!rect6                ;
	has Boolean           $!rect7                ;
	has Pointer           $!destroy              ; #= fp:XtWidgetProc
	has Pointer           $!resize               ; #= fp:XtWidgetProc
	has Pointer           $!expose               ; #= fp:XtExposeProc
	has Pointer           $!set_values           ; #= fp:XtSetValuesFunc
	has Pointer           $!set_values_hook      ; #= fp:XtArgsFunc
	has Pointer           $!set_values_almost    ; #= fp:XtAlmostProc
	has Pointer           $!get_values_hook      ; #= fp:XtArgsProc
	has Pointer           $!rect9                ; #= fp:XtProc
	has XtVersionType     $!version              ;
	has XtPointer         $!callback_private     ;
	has String            $!rect10               ;
	has Pointer           $!query_geometry       ; #= fp:XtGeometryHandler
	has Pointer           $!rect11               ; #= fp:XtProc
	has XtPointer         $!extension            ;
}

class RectObjClassRec is repr<CStruct> is export {
	has RectObjClassPart $!rect_class;
}

class RectObjPart is repr<CStruct> is export {
	has Position  $!x                 ;
	has Position  $!y                 ;
	has Dimension $!width             ;
	has Dimension $!height            ;
	has Dimension $!border_width      ;
	has Boolean   $!managed           ;
	has Boolean   $!sensitive         ;
	has Boolean   $!ancestor_sensitive;
}

class RectObjRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
}

class RepeaterClassRec is repr<CStruct> is export {
	has CoreClassPart     $!core_class    ;
	has SimpleClassPart   $!simple_class  ;
	has LabelClassPart    $!label_class   ;
	has CommandClassPart  $!command_class ;
	has RepeaterClassPart $!repeater_class;
}

class RepeaterPart is repr<CStruct> is export {
  # Resources
  has int            $.initial_delay     is rw; #= initialDelay/Delay
  has int            $.repeat_delay      is rw; #= repeatDelay/Delay
  has int            $.minimum_delay     is rw; #= minimumDelay/MinimumDelay
  has int            $.decay             is rw; #= decay to minimum delay
  has Boolean        $.flash             is rw; #= flash/Boolean
  has XtCallbackList $.start_callbacks;         #= startCallback/StartCallback
  has XtCallbackList $.stop_callbacks;          #= stopCallback/StopCallback
  # private
  has int            $.next_delay;              #= next amount for timer
  has XtIntervalId   $.timer;                   #= timer that will fire

  # has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer  $!pad1;
  has XtPointer  $!pad2;
  has XtPointer  $!pad3;
  has XtPointer  $!pad4;
}

class RepeaterRec is repr<CStruct> is export {
	has CorePart     $!core    ;
	has SimplePart   $!simple  ;
	has LabelPart    $!label   ;
	has CommandPart  $!command ;
	has RepeaterPart $!repeater;
}

class SelectionPropRec is repr<CStruct> is export {
  has Atom    $.prop  is rw;
  has Boolean $.avail is rw;
}
constant SelectionProp is export := SelectionPropRec;

class PropListRec is repr<CStruct> is export {
  has Display       $.dpy;
  has Atom          $.incr_atom;
  has Atom          $.indirect_atom;
  has Atom          $.timestamp_atom;
  has int           $.propCount       is rw ;
  has SelectionProp $.list;
}
constant PropList is export := PropListRec;

class RequestRec is repr<CStruct> is export { ... }
constant Request is export := RequestRec;

class SelectRec is repr<CStruct> is export {
  has Atom       $.selection;            #= constant
  has Display    $.dpy;                  #= constant
  has Widget     $.widget;
  has Time       $.time;
  has ulong      $.serial;
  has Pointer    $.convert;              #= fp:XtConvertSelectionProc
  has Pointer    $.loses;                #= fp:XtLoseSelectionProc
  has Pointer    $.notify;               #= fp:XtSelectionDoneProc
  has Pointer    $.owner_cancel;         #= fp:XtCancelConvertSelectionProc
  has XtPointer  $.owner_closure;
  has PropList   $.prop_list;
  has Request    $.req;                  #= state for local non-incr xfer
  has int        $.ref_count      is rw; #= of active transfers
  has uint       $.incremental    is rw; #= b:1;
  has uint       $.free_when_done is rw; #= b:1;
  has uint       $.was_disowned   is rw; #= b:1;
}
constant Select is export := SelectRec;

class XSelectionRequestEvent is repr<CStruct> is export {
  has int      $.type       is rw;
  has ulong    $.serial     is rw; #=         - # of last request processed by server
  has Boolean  $.send_event is rw; #= ot:Bool - true if this came from a SendEvent request
  has Display  $.display    is rw; #=         - Display the event was read from
  has Window   $.owner;
  has Window   $.requestor;
  has Atom     $.selection  is rw;
  has Atom     $.target     is rw;
  has Atom     $.property   is rw;
  has Time     $.time       is rw;
}

class RequestRec {
	has Select                 $!ctx       ;
	has Widget                 $!widget    ;
	has Window                 $!requestor ;
	has Atom                   $!property  ;
	has Atom                   $!target    ;
	has Atom                   $!type      ;
	has int                    $!format    ;
	has XtPointer              $!value     ;
	has long                   $!bytelength;
	has long                   $!offset    ;
	has XtIntervalId           $!timeout   ;
	has XSelectionRequestEvent $!event     ;
	has Boolean                $!allSent   ;
}

class ScreenSaverNotify is repr<CStruct> is export {
	has CARD8  $!type          ;
	has BYTE   $!state         ;
	has CARD16 $!sequenceNumber;
	has Time   $!timestamp     ;
	has Window $!root          ;
	has Window $!window        ;
	has BYTE   $!kind          ;
	has BYTE   $!forced        ;
	has CARD16 $!pad0          ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
}

class ScreenSaverQueryInfo is repr<CStruct> is export {
	has CARD8    $!reqType     ;
	has CARD8    $!saverReqType;
	has CARD16   $!length      ;
	has Drawable $!drawable    ;
}

class ScreenSaverQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!saverReqType;
	has CARD16 $!length      ;
	has CARD8  $!clientMajor ;
	has CARD8  $!clientMinor ;
	has CARD16 $!unused      ;
}

class ScreenSaverSelectInput is repr<CStruct> is export {
	has CARD8    $!reqType     ;
	has CARD8    $!saverReqType;
	has CARD16   $!length      ;
	has Drawable $!drawable    ;
	has CARD32   $!eventMask   ;
}

class ScreenSaverSetAttributes is repr<CStruct> is export {
	has CARD8    $!reqType     ;
	has CARD8    $!saverReqType;
	has CARD16   $!length      ;
	has Drawable $!drawable    ;
	has INT16    $!x           ;
	has INT16    $!y           ;
	has CARD16   $!width       ;
	has CARD16   $!height      ;
	has CARD16   $!borderWidth ;
	has BYTE     $!c_class     ;
	has CARD8    $!depth       ;
	has VisualID $!visualID    ;
	has CARD32   $!mask        ;
}

class ScreenSaverSuspend is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!saverReqType;
	has CARD16 $!length      ;
	has CARD32 $!suspend     ;
}

class ScreenSaverUnsetAttributes is repr<CStruct> is export {
	has CARD8    $!reqType     ;
	has CARD8    $!saverReqType;
	has CARD16   $!length      ;
	has Drawable $!drawable    ;
}

class ScrollbarClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has SimpleClassPart    $!simple_class   ;
	has ScrollbarClassPart $!scrollbar_class;
}

class ScrollbarPart is repr<CStruct> is export {
  # resources
  has Pixel          $.foreground  is rw; #= thumb foreground color
  has XtOrientation  $.orientation is rw; #= horizontal or vertical
  has XtCallbackList $.scrollProc  is rw; #= proportional scroll
  has XtCallbackList $.thumbProc   is rw; #= jump (to position) scroll
  has XtCallbackList $.jumpProc    is rw; #= same as thumbProc but pass data by ref
  has Pixmap         $.thumb       is rw; #= thumb pixmap
  has X11Cursor         $.upCursor    is rw; #= scroll up cursor
  has X11Cursor         $.downCursor  is rw; #= scroll down cursor
  has X11Cursor         $.leftCursor  is rw; #= scroll left cursor
  has X11Cursor         $.rightCursor is rw; #= scroll right cursor
  has X11Cursor         $.verCursor   is rw; #= scroll vertical cursor
  has X11Cursor         $.horCursor   is rw; #= scroll horizontal cursor
  has float          $.top         is rw;
  has float          $.shown       is rw;
  has Dimension      $.length      is rw; #= either height or width
  has Dimension      $.thickness   is rw; #= either width or height
  has Dimension      $.min_thumb   is rw; #= minium size for the thumb

  # private
  has X11Cursor         $!inactiveCursor; #= The normal cursor for scrollbar
  has char           $!direction;      #= a scroll has started; which direction
  has GC             $!gc;             #= a (shared) gc
  has Position       $!topLoc;         #= Pixel that corresponds to top
  has Dimension      $!shownLength;    #= Num pixels corresponding to shown

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class ScrollbarRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has SimplePart    $!simple   ;
	has ScrollbarPart $!scrollbar;
}

class SearchAndReplace is repr<CStruct> is export {
	has Boolean $!selection_changed;
	has Widget  $!search_popup     ;
	has Widget  $!label1           ;
	has Widget  $!label2           ;
	has Widget  $!left_toggle      ;
	has Widget  $!right_toggle     ;
	has Widget  $!rep_label        ;
	has Widget  $!rep_text         ;
	has Widget  $!search_text      ;
	has Widget  $!rep_one          ;
	has Widget  $!rep_all          ;
	has Widget  $!case_sensitive   ;
}

class SessionShellClassRec is repr<CStruct> is export {
	has CoreClassPart             $!core_class             ;
	has CompositeClassPart        $!composite_class        ;
	has ShellClassPart            $!shell_class            ;
	has WMShellClassPart          $!wm_shell_class         ;
	has VendorShellClassPart      $!vendor_shell_class     ;
	has TopLevelShellClassPart    $!top_level_shell_class  ;
	has ApplicationShellClassPart $!application_shell_class;
	has SessionShellClassPart     $!session_shell_class    ;
}

class SetBugMode is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!mitReqType;
	has CARD16 $!length    ;
	has BOOL   $!onOff     ;
	has BYTE   $!pad0      ;
	has CARD16 $!pad1      ;
}

class ShapeCombine is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has CARD8  $!op          ;
	has CARD8  $!destKind    ;
	has CARD8  $!srcKind     ;
	has CARD8  $!junk        ;
	has Window $!dest        ;
	has INT16  $!xOff        ;
	has INT16  $!yOff        ;
	has Window $!src         ;
}

class ShapeGetRectangles is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has Window $!window      ;
	has CARD8  $!kind        ;
	has CARD8  $!junk1       ;
	has CARD16 $!junk2       ;
}

class ShapeInputSelected is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has Window $!window      ;
}

class ShapeMask is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has CARD8  $!op          ;
	has CARD8  $!destKind    ;
	has CARD16 $!junk        ;
	has Window $!dest        ;
	has INT16  $!xOff        ;
	has INT16  $!yOff        ;
	has CARD32 $!src         ;
}

class ShapeNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!kind          ;
	has CARD16 $!sequenceNumber;
	has Window $!window        ;
	has INT16  $!x             ;
	has INT16  $!y             ;
	has CARD16 $!width         ;
	has CARD16 $!height        ;
	has Time   $!time          ;
	has BYTE   $!shaped        ;
	has BYTE   $!pad0          ;
	has CARD16 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
}

class ShapeOffset is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has CARD8  $!destKind    ;
	has CARD8  $!junk1       ;
	has CARD16 $!junk2       ;
	has Window $!dest        ;
	has INT16  $!xOff        ;
	has INT16  $!yOff        ;
}

class ShapeQueryExtents is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has Window $!window      ;
}

class ShapeQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
}

class ShapeRectangles is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has CARD8  $!op          ;
	has CARD8  $!destKind    ;
	has CARD8  $!ordering    ;
	has CARD8  $!pad0        ;
	has Window $!dest        ;
	has INT16  $!xOff        ;
	has INT16  $!yOff        ;
}

class ShapeSelectInput is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!shapeReqType;
	has CARD16 $!length      ;
	has Window $!window      ;
	has BYTE   $!enable      ;
	has BYTE   $!pad1        ;
	has CARD16 $!pad2        ;
}

class ShellClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has ShellClassPart     $!shell_class    ;
}

class ShmAttach is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!shmReqType;
	has CARD16 $!length    ;
	has ShmSeg $!shmseg    ;
	has CARD32 $!shmid     ;
	has BOOL   $!readOnly  ;
	has BYTE   $!pad0      ;
	has CARD16 $!pad1      ;
}

class ShmAttachFd is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!shmReqType;
	has CARD16 $!length    ;
	has ShmSeg $!shmseg    ;
	has BOOL   $!readOnly  ;
	has BYTE   $!pad0      ;
	has CARD16 $!pad1      ;
}

class ShmCompletion is repr<CStruct> is export {
	has BYTE     $!type          ;
	has BYTE     $!bpad0         ;
	has CARD16   $!sequenceNumber;
	has Drawable $!drawable      ;
	has CARD16   $!minorEvent    ;
	has BYTE     $!majorEvent    ;
	has BYTE     $!bpad1         ;
	has ShmSeg   $!shmseg        ;
	has CARD32   $!offset        ;
	has CARD32   $!pad0          ;
	has CARD32   $!pad1          ;
	has CARD32   $!pad2          ;
}

class ShmCreatePixmap is repr<CStruct> is export {
	has CARD8    $!reqType   ;
	has CARD8    $!shmReqType;
	has CARD16   $!length    ;
	has Pixmap   $!pid       ;
	has Drawable $!drawable  ;
	has CARD16   $!width     ;
	has CARD16   $!height    ;
	has CARD8    $!depth     ;
	has CARD8    $!pad0      ;
	has CARD8    $!pad1      ;
	has CARD8    $!pad2      ;
	has ShmSeg   $!shmseg    ;
	has CARD32   $!offset    ;
}

class ShmCreateSegment is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!shmReqType;
	has CARD16 $!length    ;
	has ShmSeg $!shmseg    ;
	has CARD32 $!size      ;
	has BOOL   $!readOnly  ;
	has BYTE   $!pad0      ;
	has CARD16 $!pad1      ;
}

class ShmDetach is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!shmReqType;
	has CARD16 $!length    ;
	has ShmSeg $!shmseg    ;
}

class ShmGetImage is repr<CStruct> is export {
	has CARD8    $!reqType   ;
	has CARD8    $!shmReqType;
	has CARD16   $!length    ;
	has Drawable $!drawable  ;
	has INT16    $!x         ;
	has INT16    $!y         ;
	has CARD16   $!width     ;
	has CARD16   $!height    ;
	has CARD32   $!planeMask ;
	has CARD8    $!format    ;
	has CARD8    $!pad0      ;
	has CARD8    $!pad1      ;
	has CARD8    $!pad2      ;
	has ShmSeg   $!shmseg    ;
	has CARD32   $!offset    ;
}

class ShmGetImageReply is repr<CStruct> is export {
	has BYTE     $!type          ;
	has CARD8    $!depth         ;
	has CARD16   $!sequenceNumber;
	has CARD32   $!length        ;
	has VisualID $!visual        ;
	has CARD32   $!size          ;
	has CARD32   $!pad0          ;
	has CARD32   $!pad1          ;
	has CARD32   $!pad2          ;
	has CARD32   $!pad3          ;
}

class ShmPutImage is repr<CStruct> is export {
	has CARD8    $!reqType    ;
	has CARD8    $!shmReqType ;
	has CARD16   $!length     ;
	has Drawable $!drawable   ;
	has GContext $!gc         ;
	has CARD16   $!totalWidth ;
	has CARD16   $!totalHeight;
	has CARD16   $!srcX       ;
	has CARD16   $!srcY       ;
	has CARD16   $!srcWidth   ;
	has CARD16   $!srcHeight  ;
	has INT16    $!dstX       ;
	has INT16    $!dstY       ;
	has CARD8    $!depth      ;
	has CARD8    $!format     ;
	has CARD8    $!sendEvent  ;
	has CARD8    $!bpad       ;
	has ShmSeg   $!shmseg     ;
	has CARD32   $!offset     ;
}

class ShmQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!shmReqType;
	has CARD16 $!length    ;
}

class SignalEvent is repr<CStruct> is export {
	has Pointer         $!se_proc   ; #= fp:XtSignalCallbackProc
	has XtPointer       $!se_closure;
	has SignalEvent     $!se_next   ;
	has XtAppContext    $!app       ;
	has Boolean         $!se_notice ;
}
constant SignalEventRec is export := SignalEvent;

class SimpleClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
}

class SimpleMenuClassRec is repr<CStruct> is export {
	has CoreClassPart          $!core_class          ;
	has CompositeClassPart     $!composite_class     ;
	has ShellClassPart         $!shell_class         ;
	has OverrideShellClassPart $!override_shell_class;
	has SimpleMenuClassPart    $!simpleMenu_class    ;
}

class SimpleMenuPart is repr<CStruct> is export {
	has String         $!label_string        ;
	has SmeObject      $!label               ;
	has WidgetClass    $!label_class         ;
	has Dimension      $!top_margin          ;
	has Dimension      $!bottom_margin       ;
	has Dimension      $!row_height          ;
	has X11Cursor         $!cursor              ;
	has SmeObject      $!popup_entry         ;
	has Boolean        $!menu_on_screen      ;
	has int            $!backing_store       ;
	has Boolean        $!recursive_set_values;
	has Boolean        $!menu_width          ;
	has Boolean        $!menu_height         ;
	has SmeObject      $!entry_set           ;
	has Dimension      $!left_margin         ;
	has Dimension      $!right_margin        ;
	has XawDisplayList $!display_list        ;
	has Widget         $!sub_menu            ;
	has Str            $!state               ;
	has XtPointer      $!pad                 ;
}

class ShellPart is repr<CStruct> is export {
  has char           $.geometry;
  has Pointer        $.create_popup_child_proc; #= fp:XtCreatePopupChildProc
  has XtGrabKind     $.grab_kind;
  has Boolean        $.spring_loaded;
  has Boolean        $.popped_up;
  has Boolean        $.allow_shell_resize;
  has Boolean        $.client_specified;  #= re-using old name
  has Boolean        $.save_under;
  has Boolean        $.override_redirect;
  has XtCallbackList $.popup_callback;
  has XtCallbackList $.popdown_callback;
  has Visual         $.visual;
}

class OverrideShellPart is repr<CStruct> is export {
  has int $.frabjous;
}

class SimpleMenuRec is repr<CStruct> is export {
	has CorePart          $!core       ;
	has CompositePart     $!composite  ;
	has ShellPart         $!shell      ;
	has OverrideShellPart $!override   ;
	has SimpleMenuPart    $!simple_menu;
}

class SimpleRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
}

class SmeClassPart is repr<CStruct> is export {
  has Pointer   $.highlight;   #= fp:XtWidgetProc
  has Pointer   $.unhighlight; #= fp:XtWidgetProc
  has Pointer   $.notify;      #= fp:XtWidgetProc
  has XtPointer $.extension;
}

class SmeBSBPart is repr<CStruct> is export {
    # resources
    has String      $.label;                         #= The entry label
    has int         $.vert_space              is rw; #= extra vert space to leave, as a percentage of the font height of the label
    has Pixmap      $.left_bitmap             is rw; #= bitmaps to show
    has Pixmap      $.right_bitmap            is rw;
    has Dimension   $.left_margin             is rw; #= left and right margins
    has Dimension   $.right_margin            is rw;
    has Pixel       $.foreground              is rw; #= foreground color
    has XFontStruct $.font                    is rw; #= The font to show label in
    has XFontSet    $.fontset                 is rw; #= or fontset
    has XtJustify   $.justify                 is rw; #= Justification for the label.
    # private
    has Boolean     $.set_values_area_cleared is rw; #= do we need to unhighlight?
    has GC          $.norm_gc                 is rw; #= noral color gc
    has GC          $.rev_gc                  is rw; #= reverse color gc
    has GC          $.norm_gray_gc            is rw; #= Normal color (grayed out) gc
    has GC          $.invert_gc               is rw; #= gc for flipping colors
    has Dimension   $.left_bitmap_width       is rw; #= size of each bitmap
    has Dimension   $.left_bitmap_height      is rw;
    has Dimension   $.right_bitmap_width      is rw;
    has Dimension   $.right_bitmap_height     is rw;

    # new resources
    has String      $!menu_name;                     #= name of nested sub menu or NULL
    #has XtPointer pad[4];   /* for future use and keep binary compatability */
    has XtPointer   $!pad1;
    has XtPointer   $!pad2;
    has XtPointer   $!pad3;
    has XtPointer   $!pad4;
}

class SmeBSBClassRec is repr<CStruct> is export {
	has RectObjClassPart $!rect_class   ;
	has SmeClassPart     $!sme_class    ;
	has SmeBSBClassPart  $!sme_bsb_class;
}

class SmeClassRec is repr<CStruct> is export {
	has RectObjClassPart $!rect_class;
	has SmeClassPart     $!sme_class ;
}

class SmeLineClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class SmeLineClassRec is repr<CStruct> is export {
	has RectObjClassPart $!rect_class    ;
	has SmeClassPart     $!sme_class     ;
	has SmeLineClassPart $!sme_line_class;
}

class SmePart is repr<CStruct> {
  # resources
  has XtCallbackList $.callbacks;
  has Boolean        $.international is rw;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class SmeLinePart is repr<CStruct> is export {
  # resources
  has Pixel $.foreground;      #= Foreground color
  has Pixmap $.stipple;        #= Line Stipple
  has Dimension $.line_width;  #= Width of the line
  # Private
  has GC $!gc;                 #= Graphics context for drawing line

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class SmeLineRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
	has SmePart     $!sme      ;
	has SmeLinePart $!sme_line ;
}

class SmeBSBRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
	has SmePart     $!sme      ;
	has SmeBSBPart  $!sme_bsb  ;
}

class SmeRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
	has SmePart     $!sme      ;
}

class StripChartClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class       ;
	has SimpleClassPart     $!simple_class     ;
	has StripChartClassPart $!strip_chart_class;
}

class XPoint is repr<CStruct> is export {
  has short $.x is rw;
  has short $.y is rw;
}

class xPoint is repr<CStruct> is export {
	has INT16 $.x is rw;
	has INT16 $.y is rw;
}

class StripChartPart is repr<CStruct> is export {
    # resources
    has Pixel $.hipixel                  is rw    ; #= color index for lines
    has Pixel $.fgpixel                  is rw    ; #= color index for graph
    has GC    $.fgGC                              ; #= graphics context for fgpixel
    has GC    $.hiGC                              ; #= graphics context for hipixel
    # private
    has int            $!update                   ; #= update frequence
    has int            $!scale                    ; #= scale factor
    has int            $!min_scale                ; #= smallest scale factor
    has int            $!interval                 ; #= data point interval
    has XPoint         $!points                   ; #= Poly point for repairing graph lines
    has double         $!max_value                ; #= Max Value in window
    HAS double         @!valuedata[2048] is CArray; #= record of data points
    has XtIntervalId   $!interval_id              ;
    has XtCallbackList $!get_value                ; #= proc to call to fetch load pt
    has int            $!jump_val                 ; #= Amount to jump on each scroll

    #has XtPointer pad[4];   /* for future use and keep binary compatability */
    has XtPointer $!pad1;
    has XtPointer $!pad2;
    has XtPointer $!pad3;
    has XtPointer $!pad4;
}

class StripChartRec is repr<CStruct> is export {
	has CorePart       $!core       ;
	has SimplePart     $!simple     ;
	has StripChartPart $!strip_chart;
}

class SyncTrigger     is repr<CStruct> is export { ... }
class SyncTriggerList is repr<CStruct> is export {
	has SyncTrigger     $!pTrigger;
	has SyncTriggerList $!next    ;
}

class SysCounterInfo is repr<CStruct> is export {
  has Str             $.name                 ;
  has CARD64          $.resolution      is rw;
  has CARD64          $.bracket_greater is rw;
  has CARD64          $.bracket_less    is rw;
  has SyncCounterType $.counterType          ; #= how can this counter change
  has Pointer         $.QueryValue           ; #= fp:(pointer *pCounter, CARD64 *freshvalue)
  has Pointer         $.BracketValues        ; #= fp:(pointer, CARD64 *less, CARD64 *greater)
}

class SyncCounter is repr<CStruct> is export {
  has Pointer          $!client              ; #= ot:ClientPtr  Owning client. 0 for system counters */
  has XSyncCounter     $.id             is rw; #= resource ID
  has CARD64           $.value          is rw; #= counter value
  has SyncTriggerList  $!pTriglist           ; #= list of triggers
  has Boolean          $.beingDestroyed      ; #= ot:Bool - in process of going away
  has SysCounterInfo   $.pSysCounterInfo     ; #= NULL if not a system counter
}

class SyncTrigger {
  has SyncCounter $.pCounter        ;
  has CARD64      $.wait_value is rw; #= wait value
  has uint        $.value_type is rw; #= Absolute or Relative
  has uint        $.test_type  is rw; #= transition or Comparision type
  has CARD64      $.test_value is rw; #= trigger event threshold value
  has Pointer     $.CheckTrigger    ; #= fp:(SyncTrigger *, CARD64 --> Bool)
  has Pointer     $.TriggerFired    ; #= fp:(SyncTrigger *)
  has Pointer     $.CounterDestroyed; #= fp:(SyncTrigger *)
}

class SyncAlarmClientList is repr<CStruct> is export {
	has Pointer             $!client   ; #= ot:ClientPtr
	has XID                 $!delete_id;
	has SyncAlarmClientList $!next     ;
}

class SyncAlarm is repr<CStruct> is export {
	has SyncTrigger         $!trigger      ;
	has Pointer             $!client       ; #= ot:ClientPtr
	has XSyncAlarm          $!alarm_id     ;
	has CARD64              $!delta        ;
	has int                 $!events       ;
	has int                 $!state        ;
	has SyncAlarmClientList $!pEventClients;
}

class TMComplexBindProcsRec {
	has Widget         $!widget   ;
	has XtTranslations $!aXlations;
	has Pointer        $!procs    ; #= fp:XtActionProc
}

class TMConvertRec is repr<CStruct> is export {
	has XtTranslations $!old;
	has XtTranslations $!new;
}

class TM4 is repr<CStruct> is export {
	has XEvent $!xev  ;
	has Event  $!event;
}

class TMGlobalRec is repr<CStruct> is export {
	has TMTypeMatchRec     $!typeMatchSegmentTbl    ;
	has TMShortCard        $!numTypeMatches         ;
	has TMShortCard        $!numTypeMatchSegments   ;
	has TMShortCard        $!typeMatchSegmentTblSize;
	has TMModifierMatchRec $!modMatchSegmentTbl     ;
	has TMShortCard        $!numModMatches          ;
	has TMShortCard        $!numModMatchSegments    ;
	has TMShortCard        $!modMatchSegmentTblSize ;
	has Boolean            $!newMatchSemantics      ;
	has XtTranslations     $!tmTbl                  ;
	has TMShortCard        $!numTms                 ;
	has TMShortCard        $!tmTblSize              ;
	has TMBindCacheRec     $!bindCacheTbl           ;
	has TMShortCard        $!numBindCache           ;
	has TMShortCard        $!bindCacheTblSize       ;
	has TMShortCard        $!numLateBindings        ;
	has TMShortCard        $!numBranchHeads         ;
	has TMShortCard        $!numComplexStates       ;
	has TMShortCard        $!numComplexActions      ;
}

class TMSimpleBindProcsRec is repr<CStruct> is export {
	has XtActionProc $!procs;
}

class TemplateClassRec is repr<CStruct> is export {
	has CoreClassPart     $!core_class    ;
	has TemplateClassPart $!template_class;
}

class TemplatePart is repr<CStruct> is export {
  # Resources
  has Str $.resource;
  # Private
  has Str $!private;
}

class TemplateRec is repr<CStruct> is export {
	has CorePart     $!core      ;
	has TemplatePart $!c_template;
	has TemplatePart $!template  ;
}

class TextClassRec is repr<CStruct> is export {
	has CoreClassPart   $!core_class  ;
	has SimpleClassPart $!simple_class;
	has TextClassPart   $!text_class  ;
}

class XawTextSelection is repr<CStruct> is export {
  has XawTextPosition   $.left        is rw;
  has XawTextPosition   $.right       is rw;
  has XawTextSelectType $.type        is rw;
  has CArray[Atom]      $.selections;
  has int               $.atom_count  is rw;
  has int               $.array_size  is rw;
}

class XawTextSelectionSalt is repr<CStruct> is export {
  has XawTextSelectionSalt $.next;
  HAS XawTextSelection     $.s;
  has Str                  $!contents;
  has int                  $.length    is rw;
}

class XawTextMargin is repr<CStruct> is export {
  has Position $.left   is rw;
  has Position $.right  is rw;
  has Position $.top    is rw;
  has Position $.bottom is rw;
}

class XawTextLineTableEntry is repr<CStruct> is export {
  has XawTextPosition $.position  is rw;
  has Position        $.y         is rw;
  has uint            $.textWidth is rw;
}

class XawTextLineTable is repr<CStruct> is export {
  has XawTextPosition       $.top;             #= Top of the displayed text
  has int                   $.lines     is rw; #= How many lines in this table
  has int                   $.base_line is rw; #= line number of first entry
  has XawTextLineTableEntry $.info;            #= A dynamic array, one entry per line
}

class XawTextKillRing is repr<CStruct> is export {
  has XawTextKillRing $!next;
  has Str             $!contents;
  has int             $.length    is rw;
  has unsigned        $.refcount;
  has ulong           $.format    is rw;
}

class TextPart {
	has Widget               $!source             ;
	has Widget               $!sink               ;
	has XawTextPosition      $!insertPos          ;
	HAS XawTextSelection     $!s                  ;
	has XawTextSelectType    $!sarray             ;
	has XawTextSelectionSalt $!salt               ;
	has int                  $.left_margin          is rw;
	has int                  $.dialog_horiz_offset  is rw;
	has int                  $.dialog_vert_offset   is rw;
	has Boolean              $.display_caret        is rw;
	has Boolean              $.auto_fill            is rw;
	has XawTextScrollMode    $!scroll_vert        ;
	has XawTextScrollMode    $!scroll_horiz       ;
	has XawTextWrapMode      $.wrap                 is rw;
	has XawTextResizeMode    $.resize               is rw;
	HAS XawTextMargin        $!r_margin           ;
	has XtCallbackList       $!position_callbacks ;
	has XtPointer            $!pad1               ;
	HAS XawTextMargin        $!margin             ;
	has XawTextLineTable     $!lt                 ;
	has XawTextScanDirection $!extendDir          ;
	has XawTextSelection     $!origSel            ;
	has Time                 $!lasttime           ;
	has Time                 $!time               ;
	has Position             $!ev_x               ;
	has Position             $!ev_y               ;
	has Widget               $!vbar               ;
	has Widget               $!hbar               ;
	has SearchAndReplace     $!search             ;
	has Widget               $!file_insert        ;
	has XmuTextUpdate        $!update             ;
	has int                  $!line_number        ;
	has short                $!column_number      ;
	has Str                  $!kill_ring          ;
	has Boolean              $!selection_state    ;
	has XtPointer            $!pad2               ;
	has int                  $!pad3               ;
	has int                  $!from_left          ;
	has XawTextPosition      $!lastPos            ;
	has GC                   $!gc                 ;
	has Boolean              $!showposition       ;
	has Boolean              $!hasfocus           ;
	has Boolean              $!update_disabled    ;
	has Boolean              $!clear_to_eol       ;
	has XawTextPosition      $!old_insert         ;
	has short                $!mult               ;
	has XawTextKillRing      $!kill_ring_ptr      ;
	has XtPointer            $!pad4               ;
	has Boolean              $!redisplay_needed   ;
	has XawTextSelectionSalt $!salt2              ;
	has Str                  $!numeric            ;
	has Str                  $!source_changed     ;
	has Boolean              $!overwrite          ;
	has short                $!left_column        ;
	has short                $!right_column       ;
	has XawTextJustifyMode   $!justify            ;
	has XtPointer            $!pad                ;
}

class TextRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has TextPart   $!text  ;
}

class TextSinkExtRec is repr<CStruct> is export {
  has XtPointer $.next_extension;
  has XrmQuark  $.record_type   is rw;
  has long      $.version       is rw;
  has Cardinal  $.record_size   is rw;
  has Pointer   $.BeginPaint;          # fp:(Widget --> Bool);
  has Pointer   $.PreparePaint;        # fp:(Widget, int, int, XawTextPosition, XawTextPosition, Bool --> void);
  has Pointer   $.DoPaint;             # fp:(Widget --> void);
  has Pointer   $.EndPaint;            # fp:(Widget --> Bool);
}
constant TextSinkExt is export := TextSinkExtRec;

class TextSinkClassPart {
	has Pointer      $!DisplayText      ; #= fp:XawSinkDisplayTextProc
	has Pointer      $!InsertX11Cursor     ; #= fp:XawSinkInsertCursorProc
	has Pointer      $!ClearToBackground; #= fp:XawSinkClearToBackgroundProc
	has Pointer      $!FindPosition     ; #= fp:XawSinkFindPositionProc
	has Pointer      $!FindDistance     ; #= fp:XawSinkFindDistanceProc
	has Pointer      $!Resolve          ; #= fp:XawSinkResolveProc
	has Pointer      $!MaxLines         ; #= fp:XawSinkMaxLinesProc
	has Pointer      $!MaxHeight        ; #= fp:XawSinkMaxHeightProc
	has Pointer      $!SetTabs          ; #= fp:XawSinkSetTabsProc
	has Pointer      $!GetX11CursorBounds  ; #= fp:XawSinkGetCursorBoundsProc
	has TextSinkExt  $!extension        ;
}

class TextSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSinkClassPart $!text_sink_class;
}

class TextSinkRec is repr<CStruct> is export {
	has ObjectPart   $!object   ;
	has TextSinkPart $!text_sink;
}

class TextSrcClassPart {
	has Pointer    $!Read            ; #= fp:XawSrcReadProc
	has Pointer    $!Replace         ; #= fp:XawSrcReplaceProc
	has Pointer    $!Scan            ; #= fp:XawSrcScanProc
	has Pointer    $!Search          ; #= fp:XawSrcSearchProc
	has Pointer    $!SetSelection    ; #= fp:XawSrcSetSelectionProc
	has Pointer    $!ConvertSelection; #= fp:XawSrcConvertSelectionProc
	has XtPointer  $!extension       ;
}

class TextSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart  $!object_class ;
	has TextSrcClassPart $!textSrc_class;
}

class TextSrcRec is repr<CStruct> is export {
	has ObjectPart  $!object ;
	has TextSrcPart $!textSrc;
}

class timeval is repr<CStruct> is export {
  has long $.tv_sec  is rw; #= seconds
  has long $.tv_usec is rw; #= and microseconds
}

class TimerEvent is repr<CStruct> is export {
	HAS timeval             $!te_timer_value;
	has TimerEvent          $!te_next       ;
	has Pointer             $!te_proc       ; #= fp:XtTimerCallbackProc
	has XtAppContext        $!app           ;
	has XtPointer           $!te_closure    ;
}
constant TimerEventRec is export := TimerEvent;

class TipClassRec is repr<CStruct> is export {
	has CoreClassPart $!core_class;
	has TipClassPart  $!tip_class ;
}

class TipPart is repr<CStruct> is export {
	has Pixel          $!foreground   ;
	has XFontStruct    $!font         ;
	has XFontSet       $!fontset      ;
	has Dimension      $!top_margin   ;
	has Dimension      $!bottom_margin;
	has Dimension      $!left_margin  ;
	has Dimension      $!right_margin ;
	has int            $!backing_store;
	has int            $!timeout      ;
	has XawDisplayList $!display_list ;
	has GC             $!gc           ;
	has XtIntervalId   $!timer        ;
	has String         $!label        ;
	has Boolean        $!international;
	has Str            $!encoding     ;
	has XtPointer      $!pad          ;
}

class TipRec is repr<CStruct> is export {
	has CorePart $!core;
	has TipPart  $!tip ;
}

class ToggleClass is repr<CStruct> is export {
	has Pointer   $!Set      ; #= fp:XtActionProc
	has Pointer   $!Unset    ; #= fp:XtActionProc
	has XtPointer $!extension;
}

class ToggleClassRec is repr<CStruct> is export {
	has CoreClassPart    $!core_class   ;
	has SimpleClassPart  $!simple_class ;
	has LabelClassPart   $!label_class  ;
	has CommandClassPart $!command_class;
	has ToggleClassPart  $!toggle_class ;
}

class RadioGroup is repr<CStruct> is export {
  has RadioGroup $.prev,
  has RadioGroup $.next;
  has Widget     $.widget; #= Widget corrosponding to this element
}

class TogglePart is repr<CStruct> is export {
  # resources
  has Widget     $.widget;
  has XtPointer  $.radio_data;
  # Private
  has RadioGroup $!radio_group;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class ToggleRec is repr<CStruct> is export {
	has CorePart    $!core   ;
	has SimplePart  $!simple ;
	has LabelPart   $!label  ;
	has CommandPart $!command;
	has TogglePart  $!toggle ;
}

class TopLevelShellClassRec is repr<CStruct> is export {
	has CoreClassPart          $!core_class           ;
	has CompositeClassPart     $!composite_class      ;
	has ShellClassPart         $!shell_class          ;
	has WMShellClassPart       $!wm_shell_class       ;
	has VendorShellClassPart   $!vendor_shell_class   ;
	has TopLevelShellClassPart $!top_level_shell_class;
}

class TransientShellClassRec is repr<CStruct> is export {
	has CoreClassPart           $!core_class           ;
	has CompositeClassPart      $!composite_class      ;
	has ShellClassPart          $!shell_class          ;
	has WMShellClassPart        $!wm_shell_class       ;
	has VendorShellClassPart    $!vendor_shell_class   ;
	has TransientShellClassPart $!transient_shell_class;
}

class TreeClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class TreeClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has TreeClassPart       $!tree_class      ;
}

class TreeConstraintsPart is repr<CStruct> is export {
	has Widget    $!parent      ;
	has GC        $!gc          ;
	has Widget    $!children    ;
	has int       $!n_children  ;
	has int       $!max_children;
	has Dimension $!bbsubwidth  ;
	has Dimension $!bbsubheight ;
	has Dimension $!bbwidth     ;
	has Dimension $!bbheight    ;
	has Position  $!x           ;
	has Position  $!y           ;
	has XtPointer $!pad         ;
}

class TreeConstraintsRec is repr<CStruct> is export {
	has TreeConstraintsPart $!tree;
}

class TreePart is repr<CStruct> is export {
  # fields available through resources
  has Dimension      $.hpad             is rw; #= hSpace/HSpace
  has Dimension      $.vpad             is rw; #= vSpace/VSpace
  has Dimension      $.line_width       is rw; #= lineWidth/LineWidth
  has Pixel          $.foreground       is rw; #= foreground/Foreground
  has XtGravity      $.gravity          is rw; #= gravity/Gravity
  has Boolean        $.auto_reconfigure is rw; #= autoReconfigure/AutoReconfigure
  # private fields
  has GC             $!gc                    ; #= used to draw lines
  has Widget         $!tree_root             ; #= hidden root off all children
  has Dimension      $!largest               ; #= list of largest per depth
  has int            $!n_largest             ; #= number of elements in largest
  has Dimension      $!maxwidth              ; #= for shrink wrapping
  has Dimension      $!maxheight             ; #= for shrink wrapping
  has XawDisplayList $!display_list          ;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer $!pad1;
  has XtPointer $!pad2;
  has XtPointer $!pad3;
  has XtPointer $!pad4;
}

class TreeRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has TreePart       $!tree      ;
}

class VendorShellClassRec is repr<CStruct> is export {
	has CoreClassPart        $!core_class        ;
	has CompositeClassPart   $!composite_class   ;
	has ShellClassPart       $!shell_class       ;
	has WMShellClassPart     $!wm_shell_class    ;
	has VendorShellClassPart $!vendor_shell_class;
}

class VendorShellExtClassRec is repr<CStruct> is export {
	has ObjectClassPart            $!object_class          ;
	has XawVendorShellExtClassPart $!vendor_shell_ext_class;
}

class ViewportClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has FormClassPart       $!form_class      ;
	has ViewportClassPart   $!viewport_class  ;
}

class ViewportConstraintsPart is repr<CStruct> {
  has Boolean $.reparented is rw; #= ot:Bool - True if child has been re-parented
}

class ViewportConstraintsRec is repr<CStruct> is export {
	has FormConstraintsPart     $!form    ;
	has ViewportConstraintsPart $!viewport;
}

class ViewportPart is repr<CStruct> is export {
	has Boolean        $!forcebars       ;
	has Boolean        $!allowhoriz      ;
	has Boolean        $!allowvert       ;
	has Boolean        $!usebottom       ;
	has Boolean        $!useright        ;
	has XtCallbackList $!report_callbacks;
	has Widget         $!clip            ;
	has Widget         $!child           ;
	has Widget         $!horiz_bar       ;
	has Widget         $!vert_bar        ;
	has XtPointer      $!pad             ;
}

class ViewportRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has FormPart       $!form      ;
	has ViewportPart   $!viewport  ;
}

class WMShellClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has ShellClassPart     $!shell_class    ;
	has WMShellClassPart   $!wm_shell_class ;
}

class WidgetInfo is repr<CStruct> is export {
	has short  $.num_widgets  is rw;
	has long   $.ids          is rw;
	has Widget $!real_widget;
}

class WorkProc is repr<CStruct> is export {
	has Pointer      $!proc   ; #= fp:XtWorkProc
	has XtPointer    $!closure;
	has WorkProc     $!next   ;
	has XtAppContext $!app    ;
}
constant WorkProcRec is export := WorkProc;

class XAnimX11Cursor is repr<CStruct> is export {
	has X11Cursor $!cursor;
	has long   $.delay   is rw;
}

class XAnyClassinfo is repr<CStruct> is export {
	has XID $.c_class is rw;
	has XID $.class   is rw;
	has int $.length  is rw;
}

class XAsyncEState is repr<CStruct> is export {
	has long  $.min_sequence_number  is rw;
	has long  $.max_sequence_number  is rw;
	has Str   $!error_code         ;
	has Str   $!major_opcode       ;
	has short $.minor_opcode         is rw;
	has Str   $!last_error_received;
	has int   $.error_count          is rw;
}

class XAxisInfo is repr<CStruct> is export {
	has int $.resolution is rw;
	has int $.min_value  is rw;
	has int $.max_value  is rw;
}
constant xAxisInfo is export := XAxisInfo;

class XButtonInfo is repr<CStruct> is export {
	has XID   $.c_class     is rw;
	has XID   $.class       is rw;
	has int   $.length      is rw;
	has short $.num_buttons is rw;
}

class XCircle is repr<CStruct> is export {
	has XFixed $.x;
	has XFixed $.y;
	has XFixed $.radius;
}

class XPointFixed is repr<CStruct> is export {
  has XFixed $.x,
  has XFixed $.y;
}

class XLineFixed is repr<CStruct> is export {
  HAS XPointFixed $.p1,
  HAS XPointFixed $.p2;
};

class XTriangle is repr<CStruct> is export {
  HAS XPointFixed $.p1;
  HAS XPointFixed $.p2;
  HAS XPointFixed $.p3;
}

class XTrapezoid is repr<CStruct> is export {
  has XFixed     $.top;
  has XFixed     $.bottom;
  HAS XLineFixed $.left;
  HAS XLineFixed $.right;
}

class XTransform is repr<CStruct> is export {
  HAS XFixed @.matrix[9] is CArray; #= is really [3][3]
}

class XComposeStatus is repr<CStruct> is export {
	has XPointer $!compose_ptr  ;
	has int      $!chars_matched;
}

class XConicalGradient is repr<CStruct> is export {
	HAS XPointFixed $!center;
	has XFixed      $.angle   is rw;
}

class XConnWatchInfo is repr<CStruct> is export {
	has Pointer         $!fn         ; #= fp:XConnectionWatchProc
	has XPointer        $!client_data;
	has XConnWatchInfo  $!next       ;
}

class XConnectionInfo is repr<CStruct> is export {
	has int              $!fd           ;
	has Pointer          $!read_callback; #= fp:XInternalConnectionProc
	has XPointer         $!call_data    ;
	has XPointer         $!watch_data   ;
	has XConnectionInfo  $!next         ;
}

class XDGACloseFramebuffer is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
}

class XDGACopyArea is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD16 $!srcx      ;
	has CARD16 $!srcy      ;
	has CARD16 $!width     ;
	has CARD16 $!height    ;
	has CARD16 $!dstx      ;
	has CARD16 $!dsty      ;
}

class XDGACopyTransparentArea is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD16 $!srcx      ;
	has CARD16 $!srcy      ;
	has CARD16 $!width     ;
	has CARD16 $!height    ;
	has CARD16 $!dstx      ;
	has CARD16 $!dsty      ;
	has CARD32 $!key       ;
}

class XDGACreateColormap is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD32 $!id        ;
	has CARD32 $!mode      ;
	has CARD8  $!alloc     ;
	has CARD8  $!pad1      ;
	has CARD16 $!pad2      ;
}

class XDGAFillRectangle is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD16 $!x         ;
	has CARD16 $!y         ;
	has CARD16 $!width     ;
	has CARD16 $!height    ;
	has CARD32 $!color     ;
}

class XDGAGetViewportStatus is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
}

class XDGAInstallColormap is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD32 $!cmap      ;
}

class XDGAOpenFramebuffer is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
}

class XDGAQueryModes is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
}

class XDGAQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
}

class XDGASelectInput is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD32 $!mask      ;
}

class XDGASetClientVersion is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD16 $!major     ;
	has CARD16 $!minor     ;
}

class XDGASetMode is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD32 $!mode      ;
	has CARD32 $!pid       ;
}

class XDGASetViewport is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
	has CARD16 $!x         ;
	has CARD16 $!y         ;
	has CARD32 $!flags     ;
}

class XDGASync is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!dgaReqType;
	has CARD16 $!length    ;
	has CARD32 $!screen    ;
}

class xAnyClassinfo is repr<CStruct> is export {
  has CARD8 $.class  is rw;
  has CARD8 $.length is rw;
}
constant xAnyClassPtr is export := xAnyClassinfo;
constant XAnyClassPtr is export := xAnyClassinfo;

class XDeviceInfo is repr<CStruct> is export {
	has XID          $!id            ;
	has Atom         $!type          ;
	has Str          $!name          ;
	has int          $!num_classes   ;
	has int          $!use           ;
	has XAnyClassPtr $!inputclassinfo;
}

class XEVIGetVisualInfoReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!unused        ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD32 $!n_info        ;
	has CARD32 $!n_conflicts   ;
	has CARD32 $!pad0          ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
}

class XEVIGetVisualInfoReq is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xeviReqType;
	has CARD16 $!length     ;
	has CARD32 $!n_visual   ;
}

class XEVIQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xeviReqType;
	has CARD16 $!length     ;
}

class XExtCodes is repr<CStruct> is export {
  has int $.extension    is rw; #= extension number
  has int $.major_opcode is rw; #= major op-code assigned by server
  has int $.first_event  is rw; #= first event number for the extension
  has int $.first_error  is rw; #= first error number for the extension
}

class XExtDisplayInfo is repr<CStruct> is export {
	has XExtDisplayInfo $!next   ;
	has Display         $!display;
	has XExtCodes       $!codes  ;
	has XPointer        $!data   ;
}

class XExtEventInfo is repr<CStruct> is export {
	has Mask $!mask;
	has BYTE $!type;
	has BYTE $!word;
}

class XExten is repr<CStruct> is export {
	has XExten     $!next         ;
	has XExtCodes  $!codes        ;
	has Pointer    $!create_GC    ; #= fp:CreateGCType
	has Pointer    $!copy_GC      ; #= fp:CopyGCType
	has Pointer    $!flush_GC     ; #= fp:FlushGCType
	has Pointer    $!free_GC      ; #= fp:FreeGCType
	has Pointer    $!create_Font  ; #= fp:CreateFontType
	has Pointer    $!free_Font    ; #= fp:FreeFontType
	has Pointer    $!close_display; #= fp:CloseDisplayType
	has Pointer    $!error        ; #= fp:ErrorType
	has Pointer    $!error_string ; #= fp:ErrorStringType
	has Str        $!name         ;
	has Pointer    $!error_values ; #= fp:PrintErrorType
	has Pointer    $!before_flush ; #= fp:BeforeFlushType
	has XExten     $!next_flush   ;
}

class XExtensionInfo is repr<CStruct> is export {
	has XExtDisplayInfo $!head     ;
	has XExtDisplayInfo $!cur      ;
	has int             $!ndisplays;
}

class XFilters is repr<CStruct> is export {
	has int   $!nfilter;
	has Str   $!filter ;
	has int   $!nalias ;
	has short $!alias  ;
}

class XFreeFuncs is repr<CStruct> is export {
	has Pointer  $!atoms        ; #= fp:FreeFuncType
	has Pointer  $!modifiermap  ; #= fp:FreeModmapType
	has Pointer  $!key_bindings ; #= fp:FreeFuncType
	has Pointer  $!context_db   ; #= fp:FreeFuncType
	has Pointer  $!defaultCCCs  ; #= fp:FreeFuncType
	has Pointer  $!clientCmaps  ; #= fp:FreeFuncType
	has Pointer  $!intensityMaps; #= fp:FreeFuncType
	has Pointer  $!im_filters   ; #= fp:FreeFuncType
	has Pointer  $!xkb          ; #= fp:FreeFuncType
}

class XGlyphInfo is repr<CStruct> is export {
	has short $!width ;
	has short $!height;
	has short $!x     ;
	has short $!y     ;
	has short $!xOff  ;
	has short $!yOff  ;
}

class XIMHotKeyTrigger is repr<CStruct> is export {
	has KeySym $!keysym       ;
	has int    $!modifier     ;
	has int    $!modifier_mask;
}

class XIMHotKeyTriggers is repr<CStruct> is export {
	has int              $!num_hot_key;
	has XIMHotKeyTrigger $!key        ;
}

class XIMPreeditCaretCallbackStruct is repr<CStruct> is export {
	has int               $!position ;
	has XIMCaretDirection $!direction;
	has XIMCaretStyle     $!style    ;
}

class AllString is repr<CUnion> is export {
  has CArray[char]    $.multi_byte;
  has CArray[wchar_t] $.wide_char;
}

class XIMText is repr<CStruct> is export {
  has ushort        $.length            is rw;
  has XIMFeedback   $.feedback;
  has Boolean       $.encoding_is_wchar is rw; #= ot:Bool
  HAS AllString     $.string;
}
# cw: I'm calling a fiat here in that XIMStringConversionText is NOT meant to
#     be a separate type from XIMText. If I am wrong, the below will need to
#     become a class with a copy of XIMText's attributes.
constant XIMStringConversionText is export := XIMText;

class XIMPreeditDrawCallbackStruct is repr<CStruct> is export {
	has int     $!caret     ;
	has int     $!chg_first ;
	has int     $!chg_length;
	has XIMText $!text      ;
}

class XIMPreeditStateNotifyCallbackStruct is repr<CStruct> is export {
	has XIMPreeditState $!state;
}

class XIMStringConversionCallbackStruct is repr<CStruct> is export {
	has XIMStringConversionPosition  $!position ;
	has XIMCaretDirection            $!direction;
	has XIMStringConversionOperation $!operation;
	has short                        $!factor   ;
	has XIMStringConversionText      $!text     ;
}

class XIndexValue is repr<CStruct> is export {
	has long  $!pixel;
	has short $!red  ;
	has short $!green;
	has short $!blue ;
	has short $!alpha;
}

class XKeyInfo is repr<CStruct> is export {
	has XID   $!c_class    ;
	has XID   $!class      ;
	has int   $!length     ;
	has short $!min_keycode;
	has short $!max_keycode;
	has short $!num_keys   ;
}

class XLinearGradient is repr<CStruct> is export {
	has XPointFixed $!p1;
	has XPointFixed $!p2;
}

class XPointDouble is repr<CStruct> is export {
	has XDouble $!x;
	has XDouble $!y;
}

class XRRCrtcGamma is repr<CStruct> is export {
	has int   $!size ;
	has short $!red  ;
	has short $!green;
	has short $!blue ;
}

class XRRCrtcInfo is repr<CStruct> is export {
	has Time     $!timestamp;
	has int      $!x        ;
	has int      $!y        ;
	has int      $!width    ;
	has int      $!height   ;
	has RRMode   $!mode     ;
	has Rotation $!rotation ;
	has int      $!noutput  ;
	has RROutput $!outputs  ;
	has Rotation $!rotations;
	has int      $!npossible;
	has RROutput $!possible ;
}

class XRRCrtcTransformAttributes is repr<CStruct> is export {
	has XTransform $!pendingTransform;
	has Str        $!pendingFilter   ;
	has int        $!pendingNparams  ;
	has XFixed     $!pendingParams   ;
	has XTransform $!currentTransform;
	has Str        $!currentFilter   ;
	has int        $!currentNparams  ;
	has XFixed     $!currentParams   ;
}

class XRRModeInfo is repr<CStruct> is export {
	has RRMode       $!id        ;
	has int          $!width     ;
	has int          $!height    ;
	has long         $!dotClock  ;
	has int          $!hSyncStart;
	has int          $!hSyncEnd  ;
	has int          $!hTotal    ;
	has int          $!hSkew     ;
	has int          $!vSyncStart;
	has int          $!vSyncEnd  ;
	has int          $!vTotal    ;
	has Str          $!name      ;
	has int          $!nameLength;
	has XRRModeFlags $!modeFlags ;
}

class XRRMonitorInfo is repr<CStruct> is export {
	has Atom     $!name     ;
	has Boolean  $!primary  ; #= ot:Bool
	has Boolean  $!automatic; #= ot:Bool
	has int      $!noutput  ;
	has int      $!x        ;
	has int      $!y        ;
	has int      $!width    ;
	has int      $!height   ;
	has int      $!mwidth   ;
	has int      $!mheight  ;
	has RROutput $!outputs  ;
}

class XRROutputInfo is repr<CStruct> is export {
	has Time          $!timestamp     ;
	has RRCrtc        $!crtc          ;
	has Str           $!name          ;
	has int           $!nameLen       ;
	has long          $!mm_width      ;
	has long          $!mm_height     ;
	has Connection    $!connection    ;
	has SubpixelOrder $!subpixel_order;
	has int           $!ncrtc         ;
	has RRCrtc        $!crtcs         ;
	has int           $!nclone        ;
	has RROutput      $!clones        ;
	has int           $!nmode         ;
	has int           $!npreferred    ;
	has RRMode        $!modes         ;
}

class XRRPanning is repr<CStruct> is export {
	has Time $!timestamp    ;
	has int  $!left         ;
	has int  $!top          ;
	has int  $!width        ;
	has int  $!height       ;
	has int  $!track_left   ;
	has int  $!track_top    ;
	has int  $!track_width  ;
	has int  $!track_height ;
	has int  $!border_left  ;
	has int  $!border_top   ;
	has int  $!border_right ;
	has int  $!border_bottom;
}

class XRRProviderInfo is repr<CStruct> is export {
	has int        $!capabilities         ;
	has int        $!ncrtcs               ;
	has RRCrtc     $!crtcs                ;
	has int        $!noutputs             ;
	has RROutput   $!outputs              ;
	has Str        $!name                 ;
	has int        $!nassociatedproviders ;
	has RRProvider $!associated_providers ;
	has int        $!associated_capability;
	has int        $!nameLen              ;
}

class XRRProviderResources is repr<CStruct> is export {
	has Time       $!timestamp ;
	has int        $!nproviders;
	has RRProvider $!providers ;
}

class XRRScreenResources is repr<CStruct> is export {
	has Time        $!timestamp      ;
	has Time        $!configTimestamp;
	has int         $!ncrtc          ;
	has RRCrtc      $!crtcs          ;
	has int         $!noutput        ;
	has RROutput    $!outputs        ;
	has int         $!nmode          ;
	has XRRModeInfo $!modes          ;
}

class XRadialGradient is repr<CStruct> is export {
	has XCircle $!inner;
	has XCircle $!outer;
}

class XRenderPictureAttributes is repr<CStruct> is export {
	has int     $!repeat            ;
	has Picture $!alpha_map         ;
	has int     $!alpha_x_origin    ;
	has int     $!alpha_y_origin    ;
	has int     $!clip_x_origin     ;
	has int     $!clip_y_origin     ;
	has Pixmap  $!clip_mask         ;
	has Boolean $!graphics_exposures; #= ot:Bool
	has int     $!subwindow_mode    ;
	has int     $!poly_edge         ;
	has int     $!poly_mode         ;
	has Atom    $!dither            ;
	has Boolean $!component_alpha   ; #= ot:Bool
}

class XResClientIdSpec is repr<CStruct> is export {
	has CARD32 $!client;
	has CARD32 $!mask  ;
}

class XResQueryClientPixmapBytes is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!XResReqType;
	has CARD16 $!length     ;
	has CARD32 $!xid        ;
}

class XResQueryClientResources is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!XResReqType;
	has CARD16 $!length     ;
	has CARD32 $!xid        ;
}

class XResQueryClients is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!XResReqType;
	has CARD16 $!length     ;
}

class XResQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!XResReqType ;
	has CARD16 $!length      ;
	has CARD8  $!client_major;
	has CARD8  $!client_minor;
	has CARD16 $!unused      ;
}

class XResResourceIdSpec is repr<CStruct> is export {
	has CARD32 $!resource;
	has CARD32 $!type    ;
}
constant xXResResourceIdSpec is export := XResResourceIdSpec;

class XResResourceSizeSpec is repr<CStruct> is export {
	has xXResResourceIdSpec $!spec    ;
	has CARD32              $!bytes   ;
	has CARD32              $!refCount;
	has CARD32              $!useCount;
}

class XSQEvent is repr<CStruct> is export {
	has XSQEvent $!next       ;
	has XEvent   $!event      ;
	has long     $!qserial_num;
}

class XSpanFix is repr<CStruct> is export {
	has XFixed $!left ;
	has XFixed $!right;
	has XFixed $!y    ;
}

class XSyncValue is repr<CStruct> is export {
	has int $.hi is rw;
	has int $.lo is rw;
}

class XSyncSystemCounter is repr<CStruct> is export {
	has Str          $!name      ;
	has XSyncCounter $!counter   ;
	has XSyncValue   $!resolution;
}

class XTrap is repr<CStruct> is export {
	has XSpanFix $!top   ;
	has XSpanFix $!bottom;
}

class XValuatorInfo is repr<CStruct> is export {
	has XID        $!c_class      ;
	has XID        $!class        ;
	has int        $!length       ;
	has Str        $!num_axes     ;
	has Str        $!mode         ;
	has long       $!motion_buffer;
	has XAxisInfo  $!axes         ;
}

class XagCreate is repr<CStruct> is export {
	has CARD8     $!reqType    ;
	has CARD8     $!xagReqType ;
	has CARD16    $!length     ;
	has XAppGroup $!app_group  ;
	has CARD32    $!attrib_mask;
}

class XagCreateAssoc is repr<CStruct> is export {
	has CARD8  $!reqType          ;
	has CARD8  $!xagReqType       ;
	has CARD16 $!length           ;
	has Window $!window           ;
	has CARD16 $!window_type      ;
	has CARD16 $!system_window_len;
}

class XagDestroy is repr<CStruct> is export {
	has CARD8     $!reqType   ;
	has CARD8     $!xagReqType;
	has CARD16    $!length    ;
	has XAppGroup $!app_group ;
}

class XagDestroyAssoc is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xagReqType;
	has CARD16 $!length    ;
	has Window $!window    ;
}

class XagGetAttr is repr<CStruct> is export {
	has CARD8     $!reqType   ;
	has CARD8     $!xagReqType;
	has CARD16    $!length    ;
	has XAppGroup $!app_group ;
}

class XagQuery is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xagReqType;
	has CARD16 $!length    ;
	has CARD32 $!resource  ;
}

class XagQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType             ;
	has CARD8  $!xagReqType          ;
	has CARD16 $!length              ;
	has CARD16 $!client_major_version;
	has CARD16 $!client_minor_version;
}

class XawGripCallData is repr<CStruct> is export {
	has XEvent   $!event     ;
	has String   $!params    ;
	has Cardinal $!num_params;
}

class XawIcTablePart is repr<CStruct> is export {
	has Widget          $!widget         ;
	has XIC             $!xic            ;
	has XIMStyle        $.input_style      is rw;
	has long            $.flg              is rw;
	has long            $.prev_flg         is rw;
	has Boolean         $.ic_focused       is rw;
	has XFontSet        $!font_set       ;
	has Pixel           $.foreground       is rw;
	has Pixel           $.background       is rw;
	has Pixmap          $.bg_pixmap        is rw;
	has XawTextPosition $.cursor_position  is rw;
	has long            $.line_spacing     is rw;
	has Boolean         $.openic_error     is rw;
	has XawIcTablePart  $!next           ;
}
class XawIcTableList is repr<CPointer> is export { * }

class XawIcPart is repr<CStruct> is export {
	has XIMStyle       $.input_style       is rw;
	has Boolean        $.shared_ic         is rw;
	has XawIcTableList $!shared_ic_table ;
	has XawIcTableList $!current_ic_table;
	has XawIcTableList $!ic_table        ;
}

class XrmResource is repr<CStruct> is export {
  has long        $.xrm_name          is rw; #= Resource name quark
  has long        $.xrm_class         is rw; #= Resource class quark
  has long        $.xrm_type          is rw; #= Resource representation type quark
  has Cardinal    $.xrm_size          is rw; #= Size in bytes of representation
  has int         $.xrm_offset        is rw; #= -offset-1
  has long        $.xrm_default_type  is rw; #= Default representation type quark
  has XtPointer   $!xrm_default_addr;        #= Default resource address
}

class XrmResourceList is repr<CPointer> is export { * }

class XawImPart is repr<CStruct> is export {
	has XIM             $!xim          ;
	has XrmResourceList $!resources    ;
	has Cardinal        $.num_resources  is rw;
	has Boolean         $.open_im        is rw;
	has Boolean         $.initialized    is rw;
	has Dimension       $.area_height    is rw;
	has String          $!input_method ;
	has String          $!preedit_type ;
}

class XawListReturnStruct is repr<CStruct> is export {
	has String $!string    ;
	has int    $.list_index  is rw;
}

class XawVendorShellExtPart is repr<CStruct> is export {
  has  Widget      $.parent;
  HAS  XawImPart   $.im    ;
  HAS  XawIcPart   $.ic    ;

  #has XtPointer pad[4];   /* for future use and keep binary compatability */
  has XtPointer    $!pad1  ;
  has XtPointer    $!pad2  ;
  has XtPointer    $!pad3  ;
  has XtPointer    $!pad4  ;
}

class XawVendorShellExtRec is repr<CStruct> is export {
	has ObjectPart            $!object    ;
	has XawVendorShellExtPart $!vendor_ext;
}

class XcmsRGB is repr<CStruct> is export {
  has ushort $.red   is rw;   #= r:0x0000 .. 0xffff
  has ushort $.green is rw;   #= r:0x0000 .. 0xffff
  has ushort $.blue  is rw;   #= r:0x0000 .. 0xffff
}

class XcmsRGBi is repr<CStruct> is export {
  has XcmsFloat $.red   is rw;     #= r:0.0 .. 1.0
  has XcmsFloat $.green is rw;     #= r:0.0 .. 1.0
  has XcmsFloat $.blue  is rw;     #= r:0.0 .. 1.0
}

class XcmsCIEuvY is repr<CStruct> is export {
  has XcmsFloat $.u_prime is rw;  #= r:0.0 .. 1.0
  has XcmsFloat $.v_prime is rw;  #= r:0.0 .. 1.0
  has XcmsFloat $.Y       is rw;  #= r:0.0 .. 1.0

  method u-prime is raw { $!u_prime }
  method v-prime is raw { $!v_prime }
}

class XcmsCIExyY is repr<CStruct> is export {
  has XcmsFloat $.x is rw;
  has XcmsFloat $.y is rw;
  has XcmsFloat $.Y is rw;
}

class XcmsCIEXYZ is repr<CStruct> is export {
  has XcmsFloat $.X is rw;
  has XcmsFloat $.Y is rw;
  has XcmsFloat $.Z is rw;
}

class XcmsCIELab is repr<CStruct>  is export {
  has XcmsFloat $.L_star is rw;  # r:0.0..100.0
  has XcmsFloat $.a_star is rw;  # r:0.0..100.0
  has XcmsFloat $.b_star is rw;  # r:0.0..100.0

  method L-star is raw { $!L_star }
  method a-star is raw { $!a_star }
  method b-star is raw { $!b_star }
}

class XcmsCIELuv is repr<CStruct>  is export {
  has XcmsFloat $.L_star is rw;  # r:0.0..100.0
  has XcmsFloat $.u_star is rw;  # r:0.0..100.0
  has XcmsFloat $.v_star is rw;  # r:0.0..100.0

  method L-star is raw { $!L_star }
  method u-star is raw { $!u_star }
  method v-star is raw { $!v_star }
}

class XcmsTekHVC is repr<CStruct> is export {
  has XcmsFloat $.H is rw;  #= r:0.0 .. 360.0
  has XcmsFloat $.V is rw;  #= r:0.0 .. 100.0
  has XcmsFloat $.C is rw;  #= r:0.0 .. 100.0
}

class XcmsPad is repr<CStruct> is export {
  has XcmsFloat $.pad0;
  has XcmsFloat $.pad1;
  has XcmsFloat $.pad2;
  has XcmsFloat $.pad3;
}

class XcmsSpec is repr<CUnion> is export {
  has XcmsRGB    $.RGB;
  has XcmsRGBi   $.RGBi;
  has XcmsCIEXYZ $.CIEXYZ;
  has XcmsCIEuvY $.CIEuvY;
  has XcmsCIExyY $.CIExyY;
  has XcmsCIELab $.CIELab;
  has XcmsCIELuv $.CIELuv;
  has XcmsTekHVC $.TekHVC;
  has XcmsPad    $.Pad;
}

class XcmsColor is repr<CStruct> is export {
  HAS XcmsSpec        $.spec;
  has ulong           $.pixel   is rw; #= pixel value (as needed)
  has XcmsColorFormat $.format  is rw; #= the specification format
}

class XcmsPerScrnInfo is repr<CStruct> is export {
	has XcmsColor $!screenWhitePt;
	has XPointer  $!functionSet  ;
	has XPointer  $!screenData   ;
	has Str       $!state        ;
	has Str       $!pad          ;
}

class XcmsCCC is repr<CStruct> is export {
	has Display          $!dpy                 ;
	has int              $!screenNumber        ;
	has Visual           $!visual              ;
	has XcmsColor        $!clientWhitePt       ;
	has Pointer          $!gamutCompProc       ; #= fp:XcmsCompressionProc
	has XPointer         $!gamutCompClientData ;
	has Pointer          $!whitePtAdjProc      ; #= fp:XcmsWhiteAdjustProc
	has XPointer         $!whitePtAdjClientData;
	has XcmsPerScrnInfo  $!pPerScrnInfo        ;
}

class XcmsColorSpace is repr<CStruct> is export {
	has Str              $!prefix      ;
	has XcmsColorFormat  $!id          ;
	has Pointer          $!parseString ; #= fp:XcmsParseStringProc
	has Pointer          $!to_CIEXYZ   ; #= fp:XcmsFuncListPtr
	has Pointer          $!from_CIEXYZ ; #= fp:XcmsFuncListPtr
	has int              $!inverse_flag;
}

class XcmsFunctionSet is repr<CStruct> is export {
	has XcmsColorSpace  $!DDColorSpaces ;
	has Pointer         $!screenInitProc; #= fp:XcmsScreenInitProc
	has Pointer         $!screenFreeProc; #= fp:XcmsScreenFreeProc
}

class XcupGetReservedColormapEntries is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xcupReqType;
	has CARD16 $!length     ;
	has CARD32 $!screen     ;
}

class XcupQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType             ;
	has CARD8  $!xcupReqType         ;
	has CARD16 $!length              ;
	has CARD16 $!client_major_version;
	has CARD16 $!client_minor_version;
}

class XcupStoreColors is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xcupReqType;
	has CARD16 $!length     ;
	has CARD32 $!cmap       ;
}

class XcursorX11Cursors is repr<CStruct> is export {
  has Display         $.dpy;             #= - Display holding cursors
  has int             $.ref     is rw;   #= - reference count
  has int             $.ncursor is rw;   #= - number of cursors
  has CArray[X11Cursor]  $.cursors;         #= - array of cursors
}

class XcursorAnimate is repr<CStruct> is export {
	has XcursorX11Cursors $!cursors ;
	has int            $!sequence;
}

class XcursorChunkHeader is repr<CStruct> is export {
	has XcursorUInt $.header  is rw;
	has XcursorUInt $.type    is rw;
	has XcursorUInt $.subtype is rw;
	has XcursorUInt $.version is rw;
}

class XcursorComment is repr<CStruct> is export {
	has XcursorUInt $.version      is rw;
	has XcursorUInt $.comment_type is rw;
	has Str         $!comment           ;
}

class XcursorComments is repr<CStruct> is export {
	has int                             $.ncomment is rw;
	has CArray[Pointer[XcursorComment]] $.comments      ;
}

class XcursorFileToc is repr<CStruct> is export {
	has XcursorUInt $.type     is rw;
	has XcursorUInt $.subtype  is rw;
	has XcursorUInt $.position is rw;
}

class XcursorFileHeader is repr<CStruct> is export {
	has XcursorUInt    $.magic   is rw;
	has XcursorUInt    $.header  is rw;
	has XcursorUInt    $.version is rw;
	has XcursorUInt    $.ntoc    is rw;
	has XcursorFileToc $.tocs    is rw;
}

class XcursorImage is repr<CStruct> is export {
	has XcursorUInt  $.version is rw;
	has XcursorDim   $.size    is rw;
	has XcursorDim   $.width   is rw;
	has XcursorDim   $.height  is rw;
	has XcursorDim   $.xhot    is rw;
	has XcursorDim   $.yhot    is rw;
	has XcursorUInt  $.delay   is rw;
	has XcursorPixel $.pixels  is rw;
}

class XcursorImages is repr<CStruct> is export {
	has int                           $.nimage is rw;
	has CArray[Pointer[XcursorImage]] $.images is rw;
	has Str                           $.name   is rw;
}

class XdmAuthKey is repr<CStruct> is export {
	has BYTE $.data is rw;
}

class XdmcpBuffer is repr<CStruct> is export {
	has BYTE $.data    is rw;
	has int  $.size    is rw;
	has int  $.pointer is rw;
	has int  $.count   is rw;
}

class XdmcpHeader is repr<CStruct> is export {
	has CARD16 $.version is rw;
	has CARD16 $.opcode  is rw;
	has CARD16 $.length  is rw;
}

class XftFont is repr<CStruct> is export {
	has int       $!ascent           ;
	has int       $!descent          ;
	has int       $!height           ;
	has int       $!max_advance_width;
	has FcCharSet $!charset          ;
	has FcPattern $!pattern          ;
}

class XRenderColor is repr<CStruct> is export {
  has ushort $.red   is rw;
  has ushort $.green is rw;
  has ushort $.blue  is rw;
  has ushort $.alpha is rw;
}

class XftCharFontSpec is repr<CStruct> is export {
	has XftFont  $!font;
	has FcChar32 $!ucs4;
	has short    $!x   ;
	has short    $!y   ;
}

class XftCharSpec is repr<CStruct> is export {
	has FcChar32 $!ucs4;
	has short    $!x   ;
	has short    $!y   ;
}

class XftColor is repr<CStruct> is export {
	has long         $!pixel;
	has XRenderColor $!color;
}


class XftGlyphFontSpec is repr<CStruct> is export {
	has XftFont $!font ;
	has FT_UInt $!glyph;
	has short   $!x    ;
	has short   $!y    ;
}

class XftGlyphSpec is repr<CStruct> is export {
	has FT_UInt $!glyph;
	has short   $!x    ;
	has short   $!y    ;
}

class XkbAccessXNotify is repr<CStruct> is export {
	has int     $.type           is rw;
	has long    $.serial         is rw;
	has Boolean $.send_event     is rw; #= ot:Bool
	has Display $.display        is rw;
	has Time    $.time           is rw;
	has int     $.xkb_type       is rw;
	has int     $.device         is rw;
	has int     $.detail         is rw;
	has int     $.keycode        is rw;
	has int     $.sk_delay       is rw;
	has int     $.debounce_delay is rw;
}

class XkbAnyDoodad is repr<CStruct> is export {
	has Atom  $.name      is rw;
	has Str   $!type           ;
	has Str   $!priority       ;
	has short $.top       is rw;
	has short $.left      is rw;
	has short $.angle     is rw;
}

class XkbAnyEvent is repr<CStruct> is export {
	has int     $.type       is rw;
	has long    $.serial     is rw;
	has Boolean $.send_event is rw; #= ot:Bool
	has Display $.display    is rw;
	has Time    $.time       is rw;
	has int     $.xkb_type   is rw;
	has int     $.device     is rw;
}

class XkbBehavior is repr<CStruct> is export {
	has Str  $!type;
	has Str  $!data;
}

class XkbBellNotify is repr<CStruct> is export {
	has int     $!type      ;
	has long    $!serial    ;
	has Boolean $!send_event; #= ot:Bool
	has Display $!display   ;
	has Time    $!time      ;
	has int     $!xkb_type  ;
	has int     $!device    ;
	has int     $!percent   ;
	has int     $!pitch     ;
	has int     $!duration  ;
	has int     $!bell_class;
	has int     $!bell_id   ;
	has Atom    $!name      ;
	has Window  $!window    ;
	has Boolean $!event_only; #= ot:Bool
}

class XkbBounds is repr<CStruct> is export {
	has short $.x1 is rw;
	has short $.y1 is rw;
	has short $.x2 is rw;
	has short $.y2 is rw;
}

class XkbMapChanges is repr<CStruct> is export {
  has ushort    $.changed            is rw;
  has KeyCode   $.min_key_code       is rw;
  has KeyCode   $.max_key_code       is rw;
  has uchar     $.first_type         is rw;
  has uchar     $.num_types          is rw;
  has KeyCode   $.first_key_sym      is rw;
  has uchar     $.num_key_syms       is rw;
  has KeyCode   $.first_key_act      is rw;
  has uchar     $.num_key_acts       is rw;
  has KeyCode   $.first_key_behavior is rw;
  has uchar     $.num_key_behaviors  is rw;
  has KeyCode   $.first_key_explicit is rw;
  has uchar     $.num_key_explicit   is rw;
  has KeyCode   $.first_modmap_key   is rw;
  has uchar     $.num_modmap_keys    is rw;
  has KeyCode   $.first_vmodmap_key  is rw;
  has uchar     $.num_vmodmap_keys   is rw;
  has uchar     $.pad                is rw;
}

class XkbControlsChanges is repr<CStruct> is export {
  has uint     $.changed_ctrls         is rw;
  has uint     $.enabled_ctrls_changes is rw;
  has Boolean  $.num_groups_changed    is rw;
}

class XkbIndicatorChanges is repr<CStruct> is export {
  has uint $.state_changes is rw;
  has uint $.map_changes   is rw;
}

class XkbNameChanges is repr<CStruct> is export {
  has uint    $.changed            is rw;
  has uchar   $.first_type         is rw;
  has uchar   $.num_types          is rw;
  has uchar   $.first_lvl          is rw;
  has uchar   $.num_lvls           is rw;
  has uchar   $.num_aliases        is rw;
  has uchar   $.num_rg             is rw;
  has uchar   $.first_key          is rw;
  has uchar   $.num_keys           is rw;
  has ushort  $.changed_vmods      is rw;
  has ulong   $.changed_indicators is rw;
  has uchar   $.changed_groups     is rw;
}

class XkbCompatChanges is repr<CStruct> is export {
  has uchar   $.changed_groups is rw;
  has ushort  $.first_si       is rw;
  has ushort  $.num_si         is rw;
}

class XkbChanges is repr<CStruct> is export {
  has ushort               $.device_spec   is rw;
  has ushort               $.state_changes is rw;
  HAS XkbMapChanges        $.map;
  HAS XkbControlsChanges   $.ctrls;
  HAS XkbIndicatorChanges  $.indicators;
  HAS XkbNameChanges       $.names;
  HAS XkbCompatChanges     $.compat;
}
constant XkbChangesRec is export := XkbChanges;

class XkbKeyName is repr<CStruct> is export {
  HAS char @!name[XkbKeyNameLength] is CArray;

  method name (:$encoding = 'utf8') is rw {
    Proxy.new:
      FETCH => -> $,    { Buf.new(@!name).decode($encoding) },

      STORE => -> $, \v is copy {
        unless v ~~ Str {
          v .= Str if v.^can('Str');
        }
        die 'Value must be Str-compatible!' unless v ~~ Str;

        my $idx = 0;
        for v.encode($encoding) {
          @!name[$idx++] = $_;
          last unless $idx < XkbKeyNameLength;
        }
        @!name[$idx] = 0;
      }
  }
}

class XkbMods is repr<CStruct> is export {
  has uchar  $.mask      is rw; #= effective mods
  has uchar  $.real_mods is rw;
  has ushort $.vmods     is rw;
}

class XkbKeyType is repr<CStruct> is export {
  HAS XkbMods  $.mods;
  has uchar    $.num_levels;
  has uchar    $.map_count;
  has Pointer  $!map;         #= tb:XkbKTMapEntry
  has Pointer  $!preserve;    #= tb:XkbMods
  has Atom     $.name;
  has Pointer  $!level_names; #= tb:Atom
}

class XkbSymMap is repr<CStruct> is export {
  HAS uchar    @.kt_index[XkbNumKbdGroups] is CArray;
  has uchar    $.group_info                is rw;
  has uchar    $.width                     is rw;
  has ushort   $.offset                    is rw;
}

class XkbClientMapRec is repr<CStruct> is export {
	has Str                      $!size_types       ;
	has Str                      $!num_types        ;
	has XkbKeyType               $!types            ;
	has short                    $.size_syms   is rw;
	has short                    $.num_syms    is rw;
	has CArray[Pointer[KeySym]]  $!syms             ;
	has XkbSymMap                $!key_sym_map      ;
	has Str                      $!modmap           ;
}

class XkbColor is repr<CStruct> is export {
	has int  $.pixel is rw;
	has Str  $!spec       ;
}

class XkbCompatMapNotify is repr<CStruct> is export {
	has int        $!type          ;
	has long       $!serial        ;
	has Boolean    $!send_event    ; #= ot:Bool
	has Display    $!display       ;
	has Time       $!time          ;
	has int        $!xkb_type      ;
	has int        $!device        ;
	has int        $!changed_groups;
	has int        $!first_si      ;
	has int        $!num_si        ;
	has int        $!num_total_si  ;
}

class XkbComponentName is repr<CStruct> is export {
	has short $.flags is rw;
	has Str   $!name       ;
}

class XkbComponentNames is repr<CStruct> is export {
	has Str  $!keymap  ;
	has Str  $!keycodes;
	has Str  $!types   ;
	has Str  $!compat  ;
	has Str  $!symbols ;
	has Str  $!geometry;
}

class XkbComponentList is repr<CStruct> is export {
	has int              $.num_keymaps  is rw;
	has int              $.num_keycodes is rw;
	has int              $.num_types    is rw;
	has int              $.num_compat   is rw;
	has int              $.num_symbols  is rw;
	has int              $.num_geometry is rw;
	has XkbComponentName $!keymaps           ;
	has XkbComponentName $!keycodes          ;
	has XkbComponentName $!types             ;
	has XkbComponentName $!compat            ;
	has XkbComponentName $!symbols           ;
	has XkbComponentName $!geometry          ;
}

class XkbConfigField is repr<CStruct> is export {
	has Str  $!field   ;
	has Str  $!field_id;
}

class XkbConfigFields is repr<CStruct> is export {
	has short            $!cfg_id    ;
	has short            $!num_fields;
	has Pointer          $!fields    ; #= fp:XkbConfigFieldPtr
	has Pointer          $!parser    ; #= fp:XkbConfigParseFunc
	has Pointer          $!finish    ; #= fp:XkbConfigFinishFunc
	has XPointer         $!priv      ;
	has XkbConfigFields  $!next      ;
}

class XkbConfigModInfo is repr<CStruct> is export {
	has Boolean  $.replace     is rw; #= ot:Bool
	has Str      $!mods             ;
	has Str      $!mods_clear       ;
	has short    $.vmods       is rw;
	has short    $.vmods_clear is rw;
}

class XkbConfigRtrnPriv is repr<CStruct> is export {
	has int                $.cfg_id  is rw;
	has XPointer           $!priv         ;
	has XkbConfigRtrnPriv  $!next         ;
}

class XkbConfigUnboundMod is repr<CStruct> is export {
	has Str   $!what       ;
	has Str   $!mods       ;
	has short $.vmods is rw;
	has short $.merge is rw;
	has Str   $!name       ;
}

class XkbControlsNotify is repr<CStruct> is export {
	has int     $.type                 is rw;
	has long    $.serial               is rw;
	has Boolean $.send_event           is rw; #= ot:Bool
	has Display $.display              is rw;
	has Time    $.time                 is rw;
	has int     $.xkb_type             is rw;
	has int     $.device               is rw;
	has int     $.changed_ctrls        is rw;
	has int     $.enabled_ctrls        is rw;
	has int     $.enabled_ctrl_changes is rw;
	has int     $.num_groups           is rw;
	has KeyCode $.keycode              is rw;
	has Str     $!event_type                ;
	has Str     $!req_major                 ;
	has Str     $!req_minor                 ;

  method changed-ctrls        is rw { $!changed_ctrls        }
  method enabled-ctrls        is rw { $!enabled_ctrls        }
  method enabled-ctrl-changes is rw { $!enabled_ctrl_changes }
  method num-groups           is rw { $!num_groups           }
}

class XkbCtrlsAction is repr<CStruct> is export {
	has Str  $!type  ;
	has Str  $!flags ;
	has Str  $!ctrls3;
	has Str  $!ctrls2;
	has Str  $!ctrls1;
	has Str  $!ctrls0;
}

class XkbNames is repr<CStruct> is export {
  has Atom         $.keycodes                     is rw;
  has Atom         $.geometry                     is rw;
  has Atom         $.symbols                      is rw;
  has Atom         $.types                        is rw;
  has Atom         $.compat                       is rw;
  HAS Atom         @.vmods[XkbNumVirtualMods]     is CArray;
  HAS Atom         @.indicators[XkbNumIndicators] is CArray;
  HAS Atom         @.groups[XkbNumKbdGroups]      is CArray;
  has Pointer      $!keys;                                    #= tb:XkbKeyName - keys is an array of (xkb->max_key_code + 1) XkbKeyNameRec entries
  has Pointer      $!key_aliases;                             #= tb:XkbKeyAlias - key_aliases is an array of num_key_aliases XkbKeyAliasRec entries
  has CArray[Atom] $.radio_groups;                            #= radio_groups is an array of num_rg Atoms
  has Atom         $.phys_symbols;

  # num_keys seems to be unused in libX11
  has uchar        $.num_keys                     is rw;
  has uchar        $.num_key_aliases              is rw;
  has ushort       $.num_rg                       is rw;
}

class XkbControls is repr<CStruct> is export {
  has uchar   $.mk_dflt_btn                               is rw;
  has uchar   $.num_groups                                is rw;
  has uchar   $.groups_wrap                               is rw;
  HAS XkbMods $.internal                                  is rw;
  HAS XkbMods $.ignore_lock                               is rw;
  has uint    $.enabled_ctrls                             is rw;
  has ushort  $.repeat_delay                              is rw;
  has ushort  $.repeat_interval                           is rw;
  has ushort  $.slow_keys_delay                           is rw;
  has ushort  $.debounce_delay                            is rw;
  has ushort  $.mk_delay                                  is rw;
  has ushort  $.mk_interval                               is rw;
  has ushort  $.mk_time_to_max                            is rw;
  has ushort  $.mk_max_speed                              is rw;
  has short   $.mk_curve                                  is rw;
  has ushort  $.ax_options                                is rw;
  has ushort  $.ax_timeout                                is rw;
  has ushort  $.axt_opts_mask                             is rw;
  has ushort  $.axt_opts_values                           is rw;
  has uint    $.axt_ctrls_mask                            is rw;
  has uint    $.axt_ctrls_values                          is rw;
  HAS uchar   @.per_key_repeat[XkbPerKeyBitArraySize.Int] is CArray;
}

class XkbServerMap is repr<CStruct> is export {
  has ushort         $.num_acts                 is rw    ;
  has Pointer        $.acts                              ; #= tb:XkbAction - acts is an array of XkbActions structs, with size_acts entries allocated, and num_acts entries used.
  has ushort         $.size_acts                is rw    ;
  has Pointer        $.behaviors                         ; #= tb:XkbBehavior - behaviors, key_acts, explicit, & vmodmap are all arrays with (xkb->max_key_code + 1) entries allocated for each.
  has CArray[ushort] $.key_acts                          ;
  has CArray[uchar]  $.explicit                          ;
  HAS uchar          @.vmods[XkbNumVirtualMods] is CArray;
  has CArray[ushort] $.vmodmap                           ;
}

class XkbClientMap is repr<CStruct> is export {
  has uchar          $.size_types is rw;
  has uchar          $.num_types  is rw;
  has Pointer        $.types           ; #= tb:XkbKeyType - types is an array of XkbKeyTypeRec structs, with size_types entrie allocated, and num_types entries used. */
  has ushort         $.size_syms  is rw;
  has ushort         $.num_syms   is rw;
  has CArray[KeySym] $.syms            ; #= - syms is an array of size_syms KeySyms, in which num_syms are used */
  has Pointer        $.key_sym_map     ; #= tb:XkbSymMap - key_sym_map is an array of (max_key_code + 1) XkbSymMapRec structs
  has CArray[uchar]      $.modmap      ; #= - modmap is an array of (max_key_code + 1) unsigned chars
}

class XkbCompatMap is repr<CStruct> is export {
  has Pointer $.sym_interpret                    ; #= tb:XkbSymInterpret - sym_interpret is an array of XkbSymInterpretRec structs, in which size_si are allocated & num_si are used.
  HAS XkbMods @.groups[XkbNumKbdGroups] is CArray;
  has ushort  $.num_si                  is rw    ;
  has ushort  $.size_si                 is rw    ;
}

class XkbIndicatorMap is repr<CStruct> is export {
	has Str     $!flags       ;
	has Str     $!which_groups;
	has Str     $!groups      ;
	has Str     $!which_mods  ;
	HAS XkbMods $!mods        ;
	has int     $!ctrls       ;
}
constant XkbIndicatorMapRec is export := XkbIndicatorMap;

class XkbIndicator is repr<CStruct> is export {
  has ulong            $.phys_indicators        is rw;
  HAS XkbIndicatorMap  @.maps[XkbNumIndicators] is CArray;
}

class XkbProperty is repr<CStruct> is export {
	has Str  $!name ;
	has Str  $!value;
}

class XkbPoint is repr<CStruct> is export {
	has short $.x is rw;
	has short $.y is rw;
}

class XkbOutline is repr<CStruct> is export {
	has short       $.num_points    is rw;
	has short       $.sz_points     is rw;
	has short       $.corner_radius is rw;
	has Pointer     $!points             ; #= tb:XkbPoint,$!num_points
}

class XkbShape is repr<CStruct> is export {
	has Atom          $.name          is rw;
	has short         $.num_outlines  is rw;
	has short         $.sz_outlines   is rw;
	has Pointer       $!outlines           ; #= tb:XkbOutline,$!num_outlines
	has XkbOutline    $!approx             ;
	has XkbOutline    $!primary            ;
	HAS XkbBounds     $!bounds             ;
}

class XkbIndicatorDoodad is repr<CStruct> is export {
	has Atom  $.name          is rw;
	has Str   $.type          is rw;
	has Str   $!priority           ;
	has short $.top           is rw;
	has short $.left          is rw;
	has short $.angle         is rw;
	has short $.shape_ndx     is rw;
	has short $.on_color_ndx  is rw;
	has short $.off_color_ndx is rw;
}

class XkbLogoDoodad is repr<CStruct> is export {
	has Atom  $.name      is rw;
	has Str   $!type           ;
	has Str   $!priority       ;
	has short $.top       is rw;
	has short $.left      is rw;
	has short $.angle     is rw;
	has short $.color_ndx is rw;
	has short $.shape_ndx is rw;
	has Str   $!logo_name      ;
}

class XkbShapeDoodad is repr<CStruct> is export {
	has Atom  $!name     ;
	has Str   $!type     ;
	has Str   $!priority ;
	has short $!top      ;
	has short $!left     ;
	has short $!angle    ;
	has short $!color_ndx;
	has short $!shape_ndx;
}

class XkbTextDoodad is repr<CStruct> is export {
	has Atom  $.name      is rw;
	has Str   $!type           ;
	has Str   $!priority       ;
	has short $.top       is rw;
	has short $.left      is rw;
	has short $.angle     is rw;
	has short $.width     is rw;
	has short $.height    is rw;
	has short $.color_ndx is rw;
	has Str   $!text           ;
	has Str   $!font           ;
}

class XkbDoodad is repr<CStruct> is export {
  HAS XkbAnyDoodad         $.any;
  HAS XkbShapeDoodad       $.shape;
  HAS XkbTextDoodad        $.text;
  HAS XkbIndicatorDoodad   $.indicator;
  HAS XkbLogoDoodad        $.logo;
}

class XkbGeometry is repr<CStruct> is export {
  has Atom           $.name            is rw;
  has ushort         $.width_mm        is rw;
  has ushort         $.height_mm       is rw;
  has Str            $!label_font           ;
  has XkbColor       $.label_color          ;
  has XkbColor       $.base_color           ;
  has ushort         $.sz_properties   is rw;
  has ushort         $.sz_colors       is rw;
  has ushort         $.sz_shapes       is rw;
  has ushort         $.sz_sections     is rw;
  has ushort         $.sz_doodads      is rw;
  has ushort         $.sz_key_aliases  is rw;
  has ushort         $.num_properties  is rw;
  has ushort         $.num_colors      is rw;
  has ushort         $.num_shapes      is rw;
  has ushort         $.num_sections    is rw;
  has ushort         $.num_doodads     is rw;
  has ushort         $.num_key_aliases is rw;
  has Pointer        $.properties           ; #= tb:XkbProperty,$!num_properties
  has Pointer        $.colors               ; #= tb:XkbColor,$!num_colors
  has Pointer        $.shapes               ; #= tb:XkbShape,$!num_shapes
  has Pointer        $.sections             ; #= tb:XkbSection,$!num_sections
  has Pointer        $.doodads              ; #= tb:XkbDoodad,$!num_doodads
  has Pointer        $.key_aliases          ; #= tb:XkbKeyAlias,$!num_key_aliases
}

class XkbOverlay is repr<CStruct> is export { ... }

class XkbKey is repr<CStruct> is export {
	has XkbKeyName $!name           ;
	has short      $.gap       is rw;
	has uint8      $.shape_ndx is rw;
	has uint8      $.color_ndx is rw;
}

class XkbRow is repr<CStruct> is export {
	has short     $.top      is rw;
	has short     $.left     is rw;
	has short     $.num_keys is rw;
	has short     $.sz_keys  is rw;
	has int       $.vertical is rw;
	has XkbKey    $!keys          ;
	has XkbBounds $!bounds        ;
}

class XkbSection is repr<CStruct> is export {
  has Atom       $.name         is rw;
  has uchar      $.priority     is rw;
  has short      $.top          is rw;
  has short      $.left         is rw;
  has ushort     $.width        is rw;
  has ushort     $.height       is rw;
  has short      $.angle        is rw;
  has ushort     $.num_rows     is rw;
  has ushort     $.num_doodads  is rw;
  has ushort     $.num_overlays is rw;
  has ushort     $.sz_rows      is rw;
  has ushort     $.sz_doodads   is rw;
  has ushort     $.sz_overlays  is rw;
  has Pointer    $!rows              ; #= tb:XkbRow,$!num_rows
  has Pointer    $!doodads           ; #= tb:XkbDoodad,$!num_doodads
  HAS XkbBounds  $.bounds            ;
  has Pointer    $!overlays          ; #= tb:XkbOverlay,$!num_overlays
}

class XkbOverlay {
  has Atom        $.name           is rw;
  has XkbSection  $.section_under       ;
  has ushort      $.num_rows       is rw;
  has ushort      $.sz_rows        is rw;
  has Pointer     $!rows                ; #= tb:XkbOverlayRow,$!num_rows
  has XkbBounds   $!bounds              ;
}

class XkbOverlayKey is repr<CStruct> is export {
	has XkbKeyName $!over ;
	has XkbKeyName $!under;
}

class XkbOverlayRow is repr<CStruct> is export {
	has short   $!row_under;
	has short   $!num_keys ;
	has short   $!sz_keys  ;
	has Pointer $!keys     ; #= tb:XkbOverlayKey
}

class XkbDesc is repr<CStruct> is export {
	has Display         $!dpy         ;
	has short           $!flags       ;
	has short           $!device_spec ;
	has KeyCode         $!min_key_code;
	has KeyCode         $!max_key_code;
	has XkbControls     $!ctrls       ;
	has XkbServerMap    $!server      ;
	has XkbClientMap    $!map         ;
	has XkbIndicator    $!indicators  ;
	has XkbNames        $!names       ;
	has XkbCompatMap    $!compat      ;
	has XkbGeometry     $!geom        ;
}

class XkbDeviceBtnAction is repr<CStruct> is export {
	has Str  $!type  ;
	has Str  $!flags ;
	has Str  $!count ;
	has Str  $!button;
	has Str  $!device;
}

class XkbDeviceLedChanges is repr<CStruct> is export {
	has short                $.led_class is rw;
	has short                $.led_id    is rw;
	has int                  $.defined   is rw;
	has XkbDeviceLedChanges  $.next           ;

  method led-id    is rw { $!led_id    }
  method led-class is rw { $!led_class }
}

class XkbDeviceChanges is repr<CStruct> is export {
	has int                    $.changed   is rw;
	has short                  $.first_btn is rw;
	has short                  $.num_btns  is rw;
	has XkbDeviceLedChanges    $.leds           ;

  method first-btn  is rw { $!first_btn }
  method num-btns   is rw { $!num_btns  }
}

class XkbDeviceLedInfo is repr<CStruct> is export {
  has ushort                  $.led_class                 is rw;
  has ushort                  $.led_id                    is rw;
  has uint                    $.phys_indicators           is rw;
  has uint                    $.maps_present              is rw;
  has uint                    $.names_present             is rw;
  has uint                    $.state                     is rw;
  HAS Atom                    @.names[XkbNumIndicators]   is CArray;
  HAS XkbIndicatorMap         @.maps[XkbNumIndicators]    is CArray;

  method led-id    is rw { $!led_id    }
  method led-class is rw { $!led_class }
}

class XkbAnyAction is repr<CStruct> is export {
  has uchar   $.type;
  HAS uchar   @.data[XkbAnyActionDataSize] is CArray;
}

class XkbDeviceValuatorAction is repr<CStruct> is export {
	has Str  $!type    ;
	has Str  $!device  ;
	has Str  $!v1_what ;
	has Str  $!v1_ndx  ;
	has Str  $!v1_value;
	has Str  $!v2_what ;
	has Str  $!v2_ndx  ;
	has Str  $!v2_value;
}

class XkbGroupAction is repr<CStruct> is export {
	has Str  $!type     ;
	has Str  $!flags    ;
	has Str  $!group_XXX;
}

class XkbISOAction is repr<CStruct> is export {
	has Str  $!type     ;
	has Str  $!flags    ;
	has Str  $!mask     ;
	has Str  $!real_mods;
	has Str  $!group_XXX;
	has Str  $!affect   ;
	has Str  $!vmods1   ;
	has Str  $!vmods2   ;
}

class XkbMessageAction is repr<CStruct> is export {
	has Str  $!type   ;
	has Str  $!flags  ;
	has Str  $!message;
}

class XkbModAction is repr<CStruct> is export {
	has Str  $!type     ;
	has Str  $!flags    ;
	has Str  $!mask     ;
	has Str  $!real_mods;
	has Str  $!vmods1   ;
	has Str  $!vmods2   ;
}

class XkbPtrAction is repr<CStruct> is export {
	has Str  $!type    ;
	has Str  $!flags   ;
	has Str  $!high_XXX;
	has Str  $!low_XXX ;
	has Str  $!high_YYY;
	has Str  $!low_YYY ;
}

class XkbPtrBtnAction is repr<CStruct> is export {
	has Str  $!type  ;
	has Str  $!flags ;
	has Str  $!count ;
	has Str  $!button;
}

class XkbPtrDfltAction is repr<CStruct> is export {
	has Str  $!type    ;
	has Str  $!flags   ;
	has Str  $!affect  ;
	has Str  $!valueXXX;
}

class XkbSwitchScreenAction is repr<CStruct> is export {
	has Str  $!type     ;
	has Str  $!flags    ;
	has Str  $!screenXXX;
}

class XkbRedirectKeyAction is repr<CStruct> is export {
	has Str  $!type       ;
	has Str  $!new_key    ;
	has Str  $!mods_mask  ;
	has Str  $!mods       ;
	has Str  $!vmods_mask0;
	has Str  $!vmods_mask1;
	has Str  $!vmods0     ;
	has Str  $!vmods1     ;
}

class XkbAction is repr<CUnion> is export {
  HAS XkbAnyAction            $.any            ;
  HAS XkbModAction            $.mods           ;
  HAS XkbGroupAction          $.group          ;
  HAS XkbISOAction            $.iso            ;
  HAS XkbPtrAction            $.ptr            ;
  HAS XkbPtrBtnAction         $.btn            ;
  HAS XkbPtrDfltAction        $.dflt           ;
  HAS XkbSwitchScreenAction   $.screen         ;
  HAS XkbCtrlsAction          $.ctrls          ;
  HAS XkbMessageAction        $.msg            ;
  HAS XkbRedirectKeyAction    $.redirect       ;
  HAS XkbDeviceBtnAction      $.devbtn         ;
  HAS XkbDeviceValuatorAction $.devval         ;
  has uchar                   $.type      is rw;
}

class XkbDeviceInfo is repr<CStruct> is export {
	has Str                 $!name         ;
	has Atom                $!type         ;
	has short               $!device_spec  ;
	has Boolean             $!has_own_state; #= ot:Bool
	has short               $!supported    ;
	has short               $!unsupported  ;
	has short               $!num_btns     ;
	has XkbAction           $!btn_acts     ;
	has short               $!sz_leds      ;
	has short               $!num_leds     ;
	has short               $!dflt_kbd_fb  ;
	has short               $!dflt_led_fb  ;
	has Pointer             $!leds         ; #= tb:XkbDeviceLedInfo
}

class XkbEventCause is repr<CStruct> is export {
	has CARD8     $!kc    ;
	has CARD8     $!event ;
	has CARD8     $!mjr   ;
	has CARD8     $!mnr   ;
	has Client $!client;
}

class XkbExtensionDeviceNotify is repr<CStruct> is export {
	has int     $.type         is rw;
	has long    $.serial       is rw;
	has Boolean $.send_event   is rw; #= ot:Bool
	has Display $!display           ;
	has Time    $.time         is rw;
	has int     $.xkb_type     is rw;
	has int     $.device       is rw;
	has int     $.reason       is rw;
	has int     $.supported    is rw;
	has int     $.unsupported  is rw;
	has int     $.first_btn    is rw;
	has int     $.num_btns     is rw;
	has int     $.leds_defined is rw;
	has int     $.led_state    is rw;
	has int     $.led_class    is rw;
	has int     $.led_id       is rw;
}

class XkbGeometrySizes is repr<CStruct> is export {
	has int   $.which           is rw;
	has short $.num_properties  is rw;
	has short $.num_colors      is rw;
	has short $.num_shapes      is rw;
	has short $.num_sections    is rw;
	has short $.num_doodads     is rw;
	has short $.num_key_aliases is rw;
}

class XkbIndicatorNotify is repr<CStruct> is export {
	has int     $.type       is rw;
	has long    $.serial     is rw;
	has Boolean $.send_event is rw; #= ot:Bool
	has Display $.display         ;
	has Time    $.time       is rw;
	has int     $.xkb_type   is rw;
	has int     $.device     is rw;
	has int     $.changed    is rw;
	has int     $.state      is rw;
}

class XkbInterest is repr<CStruct> is export {
	has Pointer      $!dev                    ; #= ot:DeviceInt - requires Xorg
	has Client       $.client            is rw;
	has XID          $.resource          is rw;
	has XkbInterest  $!next                   ;
	has CARD16       $.extDevNotifyMask  is rw;
	has CARD16       $.stateNotifyMask   is rw;
	has CARD16       $.namesNotifyMask   is rw;
	has CARD32       $.ctrlsNotifyMask   is rw;
	has CARD8        $.compatNotifyMask  is rw;
	has BOOL         $.bellNotifyMask    is rw;
	has BOOL         $.actionMessageMask is rw;
	has CARD16       $.accessXNotifyMask is rw;
	has CARD32       $.iStateNotifyMask  is rw;
	has CARD32       $.iMapNotifyMask    is rw;
	has CARD16       $.altSymsNotifyMask is rw;
	has CARD32       $.autoCtrls         is rw;
	has CARD32       $.autoCtrlValues    is rw;
}

class XkbKTMapEntry is repr<CStruct> is export {
	has Boolean $.active is rw; #= ot:Bool
	has Str     $!level       ;
	has XkbMods $!mods        ;
}

class XkbMapNotifyEvent is repr<CStruct> is export {
	has int     $.type               is rw;
	has long    $.serial             is rw;
	has Boolean $.send_event         is rw; #= ot:Bool
	has Display $!display                 ;
	has Time    $.time               is rw;
	has int     $.xkb_type           is rw;
	has int     $.device             is rw;
	has int     $.changed            is rw;
	has int     $.flags              is rw;
	has int     $.first_type         is rw;
	has int     $.num_types          is rw;
	has KeyCode $.min_key_code       is rw;
	has KeyCode $.max_key_code       is rw;
	has KeyCode $.first_key_sym      is rw;
	has KeyCode $.first_key_act      is rw;
	has KeyCode $.first_key_behavior is rw;
	has KeyCode $.first_key_explicit is rw;
	has KeyCode $.first_modmap_key   is rw;
	has KeyCode $.first_vmodmap_key  is rw;
	has int     $.num_key_syms       is rw;
	has int     $.num_key_acts       is rw;
	has int     $.num_key_behaviors  is rw;
	has int     $.num_key_explicit   is rw;
	has int     $.num_modmap_keys    is rw;
	has int     $.num_vmodmap_keys   is rw;
	has int     $.vmods              is rw;
}

class XkbNamesNotify is repr<CStruct> is export {
	has int     $.type               is rw;
	has long    $.serial             is rw;
	has Boolean $.send_event         is rw; #= ot:Bool
	has Display $!display                 ;
	has Time    $.time               is rw;
	has int     $.xkb_type           is rw;
	has int     $.device             is rw;
	has int     $.changed            is rw;
	has int     $.first_type         is rw;
	has int     $.num_types          is rw;
	has int     $.first_lvl          is rw;
	has int     $.num_lvls           is rw;
	has int     $.num_aliases        is rw;
	has int     $.num_radio_groups   is rw;
	has int     $.changed_vmods      is rw;
	has int     $.changed_groups     is rw;
	has int     $.changed_indicators is rw;
	has int     $.first_key          is rw;
	has int     $.num_keys           is rw;
}

class XkbNewKeyboardNotify is repr<CStruct> is export {
	has int     $.type             is rw;
	has long    $.serial           is rw;
	has Boolean $.send_event       is rw; #= ot:Bool
	has Display $!display               ;
	has Time    $.time             is rw;
	has int     $.xkb_type         is rw;
	has int     $.device           is rw;
	has int     $.old_device       is rw;
	has int     $.min_key_code     is rw;
	has int     $.max_key_code     is rw;
	has int     $.old_min_key_code is rw;
	has int     $.old_max_key_code is rw;
	has int     $.changed          is rw;
	has Str     $!req_major             ;
	has Str     $!req_minor             ;
}

my %var-defs-extra-values-cache;
class XkbRF_VarDefs is repr<CStruct> is export {
	has Str          $!model       ;
	has Str          $!layout      ;
	has Str          $!variant     ;
	has Str          $!options     ;
	has short        $!sz_extra    ;
	has short        $!num_extra   ;
	has Str          $!extra_names ;
	has CArray[Str]  $!extra_values;

  # submethod DESTROY {
  #   # cw: Still not right!
  #   %var-defs-extra-values-cache{ $!extra_values.WHERE }:delete;
  # }
  #
  # method extra_values is also<extra-values> {
  #   unless %var-defs-extra-values-cache{ $!extra_values.WHERE } {
  #     %var-defs-extra-values-cache{ !$extra_values.WHERE } = SizedCArray.new(
  #       $!extra_values,
  #       $!num_extra
  #     );
  #   }
  #   %var-defs-extra-values-cache{ $!extar_values.WHERE}
  # }
}

class XkbRF_VarDesc is repr<CStruct> is export {
	has Str  $!name;
	has Str  $!desc;
}

class XkbRF_DescribeVars is repr<CStruct> is export {
	has int     $.sz_desc   is rw;
	has int     $.num_desc  is rw;
	has Pointer $!desc           ; #= tb:XkbRF_VarDesc
}

class XkbRF_Group is repr<CStruct> is export {
	has int  $.number is rw;
	has Str  $!name        ;
	has Str  $!words       ;
}

class XkbRF_Rules is repr<CStruct> is export {
	has XkbRF_DescribeVars    $!models           ;
	has XkbRF_DescribeVars    $!layouts          ;
	has XkbRF_DescribeVars    $!variants         ;
	has XkbRF_DescribeVars    $!options          ;
	has short                 $.sz_extra    is rw;
	has short                 $.num_extra   is rw;
	has Str                   $!extra_names      ;
	has Pointer               $!extra            ; #= tb:XkbRF_DescribeVars
	has short                 $.sz_rules    is rw;
	has short                 $.num_rules   is rw;
	has Pointer               $!rules            ; #= tb:XkbRF_Rule
	has short                 $.sz_groups   is rw;
	has short                 $.num_groups  is rw;
	has Pointer               $!groups           ; #= tb:XkbRF_Group
}

class XkbState is repr<CStruct> is export {
	has Str   $!group                   ;
	has Str   $!locked_group            ;
	has short $.base_group         is rw;
	has short $.latched_group      is rw;
	has Str   $!mods                    ;
	has Str   $!base_mods               ;
	has Str   $!latched_mods            ;
	has Str   $!locked_mods             ;
	has Str   $!compat_state            ;
	has Str   $!grab_mods               ;
	has Str   $!compat_grab_mods        ;
	has Str   $!lookup_mods             ;
	has Str   $!compat_lookup_mods      ;
	has short $.ptr_buttons        is rw;
}

class XkbRadioGroup is repr<CStruct> is export {
  has CARD8  $.flags                    is rw    ;
  has CARD8  $.nMembers                 is rw    ;
  has CARD8  $.dfltDown                 is rw    ;
  has CARD8  $.currentDown              is rw    ;
  HAS CARD8  @.members[XkbRGMaxMembers] is CArray;
}

class XkbSrvInfo is repr<CStruct> is export {
	HAS XkbState         $!prev_state                ;
	HAS XkbState         $!state                     ;
	has XkbDesc          $!desc                      ;
	has Pointer          $!device                    ; #= ot:DeviceInt
	has Pointer          $!kbdProc                   ; #= fp:KbdCtrlProcP - required Xorg
	has XkbRadioGroup    $!radioGroups               ;
	has CARD8            $.nRadioGroups         is rw;
	has CARD8            $.clearMods            is rw;
	has CARD8            $.setMods              is rw;
	has INT16            $.groupChange          is rw;
	has CARD16           $.dfltPtrDelta         is rw;
	has double           $.mouseKeysCurve       is rw;
	has double           $.mouseKeysCurveFactor is rw;
	has INT16            $.mouseKeysDX          is rw;
	has INT16            $.mouseKeysDY          is rw;
	has CARD8            $.mouseKeysFlags       is rw;
	has Boolean          $.mouseKeysAccel       is rw; #= ot:Bool
	has CARD8            $.mouseKeysCounter     is rw;
	has CARD8            $.lockedPtrButtons     is rw;
	has CARD8            $.shiftKeyCount        is rw;
	has KeyCode          $.mouseKey             is rw;
	has KeyCode          $.inactiveKey          is rw;
	has KeyCode          $.slowKey              is rw;
	has KeyCode          $.repeatKey            is rw;
	has CARD8            $.krgTimerActive       is rw;
	has CARD8            $.beepType             is rw;
	has CARD8            $.beepCount            is rw;
	has CARD32           $.flags                is rw;
	has CARD32           $.lastPtrEventTime     is rw;
	has CARD32           $.lastShiftEventTime   is rw;
	has Pointer          $!beepTimer                 ; # ot:OsTimer
	has Pointer          $!mouseKeyTimer             ; # ot:OsTimer
	has Pointer          $!slowKeysTimer             ; # ot:OsTimer
	has Pointer          $!bounceKeysTimer           ; # ot:OsTimer
	has Pointer          $!repeatKeyTimer            ; # ot:OsTimer
	has Pointer          $!krgTimer                  ; # ot:OsTimer
}

class XkbStateNotifyEvent is repr<CStruct> is export {
	has int     $.type               is rw;
	has long    $.serial             is rw;
	has Boolean $.send_event         is rw; #= ot:Bool
	has Display $!display                 ;
	has Time    $.time               is rw;
	has int     $.xkb_type           is rw;
	has int     $.device             is rw;
	has int     $.changed            is rw;
	has int     $.group              is rw;
	has int     $.base_group         is rw;
	has int     $.latched_group      is rw;
	has int     $.locked_group       is rw;
	has int     $.mods               is rw;
	has int     $.base_mods          is rw;
	has int     $.latched_mods       is rw;
	has int     $.locked_mods        is rw;
	has int     $.compat_state       is rw;
	has Str     $.grab_mods          is rw;
	has Str     $.compat_grab_mods   is rw;
	has Str     $.lookup_mods        is rw;
	has Str     $.compat_lookup_mods is rw;
	has int     $.ptr_buttons        is rw;
	has KeyCode $.keycode            is rw;
	has Str     $.event_type         is rw;
	has Str     $.req_major          is rw;
	has Str     $.req_minor          is rw;
}

class XkbSymInterpretRec is repr<CStruct> is export {
	has KeySym       $.sym         is rw;
	has Str          $!flags            ;
	has Str          $!match            ;
	has Str          $!mods             ;
	has Str          $!virtual_mod      ;
	has XkbAnyAction $!act              ;
}

class XtActionsRec is repr<CStruct> is export {
	has String  $!string;
	has Pointer $!proc  ; #= fp:XtActionProc
}

class XtGrabExt is repr<CStruct> is export {
	has Mask   $.pKeyButMask    is rw;
	has Mask   $.pModifiersMask is rw;
	has Window $.confineTo      is rw;
	has X11Cursor $.cursor         is rw;
}

sub howmany ($x, $y) { ( ($x + $y - 1) / $y ).Int }

class fd_set is repr<CStruct> is export {
  HAS long @.fds_bits[ howmany(FD_SETSIZE, NFDBITS) ] is CArray;
}

class FdStruct is repr<CStruct> is export {
  HAS fd_set  $.rmask;
  HAS fd_set  $.wmask;
  HAS fd_set  $.emask;
  has realInt $.nfds;
}

class XtCheckpointToken is repr<CStruct> is export {
	has realInt $!save_type           ;
	has realInt $!interact_style      ;
	has Boolean $!shutdown            ;
	has Boolean $!fast                ;
	has Boolean $!cancel_shutdown     ;
	has realInt $!phase               ;
	has realInt $!interact_dialog_type;
	has Boolean $!request_cancel      ;
	has Boolean $!request_next_phase  ;
	has Boolean $!save_success        ;
	has realInt $!type                ;
	has Widget  $!widget              ;
}

class XtServerGrab is repr<CStruct> is export {
  has XtServerGrab     $.next;
  has Widget           $.widget;
  has uint             $.ownerEvents;          #= b:1;
  has uint             $.pointerMode;          #= b:1;
  has uint             $.keyboardMode;         #= b:1;
  has uint             $.hasExt;               #= b:1;
  has uint             $.confineToIsWidgetWin; #= b:1;
  has KeyCode          $.keybut;
  has ushort           $.modifiers;
  has ushort           $.eventMask;
}

class XtDevice is repr<CStruct> is export {
	HAS XtServerGrab     $!grab     ;
	has XtServerGrabType $.grabType  is rw;

  method grabTypeEnum is rw {
    Proxy.new:
      FETCH => -> $           { XtServerGrabTypeEnum($!grabType) },
      STORE => -> $, Int() \v { $!grabType = v                   };
  }
}
constant XtDeviceRec is export := XtDevice;

class XtPerDisplayInput {
	has XtGrabList  $!grabList     ;
	has XtDevice    $!keyboard     ;
	has XtDevice    $!pointer      ;
	has KeyCode     $!activatingKey;
	has Widget      $!trace        ;
	has realInt     $!traceDepth   ;
	has realInt     $!traceMax     ;
	has Widget      $!focusWidget  ;
}
constant XtPerDisplayInputRec is export := XtPerDisplayInput;


class XtransConnFd is repr<CStruct> is export {
	has XtransConnFd  $!next    ;
	has realInt       $!fd      ;
	has realInt       $!do_close;
}

class Xtransport is repr<CStruct> is export {
  has Str     $!TransName             ;
  has realInt $.flags            is rw;
  has Pointer $.SetOption             ; #= fp:SetOption
  has Pointer $.BytesReadable         ; #= fp:BytesReadable
  has Pointer $.Read                  ; #= fp:Read
  has Pointer $.Write                 ; #= fp:Write
  has Pointer $.Ready                 ; #= fp:Ready
  has Pointer $.Writev                ; #= fp:Writev
  has Pointer $.Disconnect            ; #= fp:Disconnect
  has Pointer $.Close                 ; #= fp:Close
  has Pointer $.CloseForCloning       ; #= fp:CloseForCloning
}

class XtransConnInfo {
	has Xtransport    $!transptr   ;
	has realInt       $!index      ;
	has Str           $!priv       ;
	has realInt       $!flags      ;
	has realInt       $!fd         ;
	has Str           $!port       ;
	has realInt       $!family     ;
	has Str           $!addr       ;
	has realInt       $!addrlen    ;
	has Str           $!peeraddr   ;
	has realInt       $!peeraddrlen;
	has Pointer       $!recv_fds   ; #= tb:XtransConnFd
	has Pointer       $!send_fds   ; #= tb:XtransConnFd
}

class Xtransport_table is repr<CStruct> is export {
	has Xtransport  $!transport   ;
	has realInt     $!transport_id;
}

class alternate is repr<CStruct> is export {
	has Boolean $!subset; #= ot:Bool
	has Str     $!name  ;
}

class contextDataRec is repr<CStruct> is export {
	has Widget $!parent;
	has Widget $!ve    ;
}

class contextErrDataRec is repr<CStruct> is export {
	has Widget $!widget;
	has XIM    $!xim   ;
}

class internalCallback is repr<CStruct> is export {
	has short $!count     ;
	has Str   $!is_padded ;
	has Str   $!call_state;
	has int   $!align_pad ;
}
constant internalCallbackRec is export := internalCallback;

# cw: ... 7/19/2021
class iovec is repr<CStruct> is export {
	has caddr_t  $!iov_base;
	has realInt  $!iov_len ;
}

class tmask is repr<CStruct> is export {
	has Mask    $!mask;
	has Pointer $!dev ;
}

class XArc is repr<CStruct> is export {
	has INT16  $!x     ;
	has INT16  $!y     ;
	has CARD16 $!width ;
	has CARD16 $!height;
	has INT16  $!angle1;
	has INT16  $!angle2;
}
constant xArc is export := XArc;

class xButtonInfo is repr<CStruct> is export {
	has CARD8  $!c_class    ;
	has CARD8  $!class      ;
	has CARD8  $!length     ;
	has CARD16 $!num_buttons;
}

class xDeviceInfo is repr<CStruct> is export {
	has CARD32 $!type       ;
	has CARD8  $!id         ;
	has CARD8  $!num_classes;
	has CARD8  $!use        ;
	has CARD8  $!attached   ;
}

class xExtendedVisualInfo is repr<CStruct> is export {
	has VisualID $!core_visual_id        ;
	has INT8     $!screen                ;
	has INT8     $!level                 ;
	has CARD8    $!transparency_type     ;
	has CARD8    $!pad0                  ;
	has CARD32   $!transparency_value    ;
	has CARD8    $!min_hw_colormaps      ;
	has CARD8    $!max_hw_colormaps      ;
	has CARD16   $!num_colormap_conflicts;
}

class xKeyInfo is repr<CStruct> is export {
	has CARD8   $!c_class    ;
	has CARD8   $!class      ;
	has CARD8   $!length     ;
	has KeyCode $!min_keycode;
	has KeyCode $!max_keycode;
	has CARD16  $!num_keys   ;
	has CARD8   $!pad1       ;
	has CARD8   $!pad2       ;
}

class xMbufBufferInfo is repr<CStruct> is export {
	has CARD32 $!visualID  ;
	has CARD16 $!maxBuffers;
	has CARD8  $!depth     ;
	has CARD8  $!unused    ;
}


class xQueryFontReply is repr<CStruct> is export {
	has BYTE      $!type          ;
	has BYTE      $!pad1          ;
	has CARD16    $!sequenceNumber;
	has CARD32    $!length        ;
	has xCharInfo $!minBounds     ;
	has CARD32    $!walign1       ;
	has xCharInfo $!maxBounds     ;
	has CARD32    $!walign2       ;
	has CARD16    $!minCharOrByte2;
	has CARD16    $!maxCharOrByte2;
	has CARD16    $!defaultChar   ;
	has CARD16    $!nFontProps    ;
	has CARD8     $!drawDirection ;
	has CARD8     $!minByte1      ;
	has CARD8     $!maxByte1      ;
	has BOOL      $!allCharsExist ;
	has INT16     $!fontAscent    ;
	has INT16     $!fontDescent   ;
	has CARD32    $!nCharInfos    ;
}

class xRRModeInfo is repr<CStruct> is export {
	has RRMode      $!id        ;
	has CARD16      $!width     ;
	has CARD16      $!height    ;
	has CARD32      $!dotClock  ;
	has CARD16      $!hSyncStart;
	has CARD16      $!hSyncEnd  ;
	has CARD16      $!hTotal    ;
	has CARD16      $!hSkew     ;
	has CARD16      $!vSyncStart;
	has CARD16      $!vSyncEnd  ;
	has CARD16      $!vTotal    ;
	has CARD16      $!nameLength;
	has RRModeFlags $!modeFlags ;
}

class xReq is repr<CStruct> is export {
	has CARD8  $!reqType;
	has CARD8  $!data   ;
	has CARD16 $!length ;
}

class xSecurityAuthorizationRevokedEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!detail        ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!authId        ;
	has CARD32 $!pad0          ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class XSegment is repr<CStruct> is export {
	has INT16 $!x1;
	has INT16 $!y1;
	has INT16 $!x2;
	has INT16 $!y2;
}
constant xSegment is export := XSegment;

class XTextItem is repr<CStruct> is export {
  has CArray[uint8] $.chars;   #= pointer to string
  has realInt       $.nchars;  #= number of characters
  has realInt       $.delta;   #= delta between strings
  has Font          $.font;    #= font to print it in, None don't change
}

class XTextItem16 is repr<CStruct> is export {
  has Pointer    $.chars;        #= tb:XChars2b,$!nchars - pointer to string
  has realInt    $.nchars is rw; #=                      - number of characters
  has realInt    $.delta  is rw; #=                      - delta between strings
  has Font       $.font   is rw; #=                      - font to print it in, None don't change
}

class XEDataObject is repr<CUnion> is export {
  has Display      $.display;
  has GC           $.gc;
  has Visual       $.visual;
  has Screen       $.screen;
  has ScreenFormat $.pixmap_format;
  has XFontStruct  $.font;
}

class xSyncAlarmNotifyEvent is repr<CStruct> is export {
	has BYTE       $!type            ;
	has BYTE       $!kind            ;
	has CARD16     $!sequenceNumber  ;
	has XSyncAlarm $!alarm           ;
	has INT32      $!counter_value_hi;
	has CARD32     $!counter_value_lo;
	has INT32      $!alarm_value_hi  ;
	has CARD32     $!alarm_value_lo  ;
	has CARD32     $!time            ;
	has CARD8      $!state           ;
	has BYTE       $!pad0            ;
	has BYTE       $!pad1            ;
	has BYTE       $!pad2            ;
}

class xSyncAwaitFenceReq is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!syncReqType;
	has CARD16 $!length     ;
}

class xSyncAwaitReq is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!syncReqType;
	has CARD16 $!length     ;
}

class xSyncChangeAlarmReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncAlarm $!alarm      ;
	has CARD32     $!valueMask  ;
}

class xSyncChangeCounterReq is repr<CStruct> is export {
	has CARD8        $!reqType    ;
	has CARD8        $!syncReqType;
	has CARD16       $!length     ;
	has XSyncCounter $!cid        ;
	has INT32        $!value_hi   ;
	has CARD32       $!value_lo   ;
}

class xSyncCounterNotifyEvent is repr<CStruct> is export {
	has BYTE         $!type            ;
	has BYTE         $!kind            ;
	has CARD16       $!sequenceNumber  ;
	has XSyncCounter $!counter         ;
	has INT32        $!wait_value_hi   ;
	has CARD32       $!wait_value_lo   ;
	has INT32        $!counter_value_hi;
	has CARD32       $!counter_value_lo;
	has CARD32       $!time            ;
	has CARD16       $!count           ;
	has BOOL         $!destroyed       ;
	has BYTE         $!pad0            ;
}

class xSyncCreateAlarmReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncAlarm $!id         ;
	has CARD32     $!valueMask  ;
}

class xSyncCreateCounterReq is repr<CStruct> is export {
	has CARD8        $!reqType         ;
	has CARD8        $!syncReqType     ;
	has CARD16       $!length          ;
	has XSyncCounter $!cid             ;
	has INT32        $!initial_value_hi;
	has CARD32       $!initial_value_lo;
}

class xSyncCreateFenceReq is repr<CStruct> is export {
	has CARD8      $!reqType            ;
	has CARD8      $!syncReqType        ;
	has CARD16     $!length             ;
	has Drawable   $!d                  ;
	has XSyncFence $!fid                ;
	has BOOL       $!initially_triggered;
	has CARD8      $!pad0               ;
	has CARD16     $!pad1               ;
}

class xSyncDestroyAlarmReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncAlarm $!alarm      ;
}

class xSyncDestroyCounterReq is repr<CStruct> is export {
	has CARD8        $!reqType    ;
	has CARD8        $!syncReqType;
	has CARD16       $!length     ;
	has XSyncCounter $!counter    ;
}

class xSyncDestroyFenceReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncFence $!fid        ;
}

class xSyncGetPriority is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!syncReqType;
	has CARD16 $!length     ;
	has CARD32 $!id         ;
}

class xSyncInitialize is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!syncReqType ;
	has CARD16 $!length      ;
	has CARD8  $!majorVersion;
	has CARD8  $!minorVersion;
	has CARD16 $!pad         ;
}

class xSyncListSystemCounters is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!syncReqType;
	has CARD16 $!length     ;
}

class xSyncQueryAlarmReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncAlarm $!alarm      ;
}

class xSyncQueryCounterReq is repr<CStruct> is export {
	has CARD8        $!reqType    ;
	has CARD8        $!syncReqType;
	has CARD16       $!length     ;
	has XSyncCounter $!counter    ;
}

class xSyncQueryFenceReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncFence $!fid        ;
}

class xSyncResetFenceReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncFence $!fid        ;
}

class xSyncSetCounterReq is repr<CStruct> is export {
	has CARD8        $!reqType    ;
	has CARD8        $!syncReqType;
	has CARD16       $!length     ;
	has XSyncCounter $!cid        ;
	has INT32        $!value_hi   ;
	has CARD32       $!value_lo   ;
}

class xSyncSetPriority is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!syncReqType;
	has CARD16 $!length     ;
	has CARD32 $!id         ;
	has INT32  $!priority   ;
}

class xSyncTriggerFenceReq is repr<CStruct> is export {
	has CARD8      $!reqType    ;
	has CARD8      $!syncReqType;
	has CARD16     $!length     ;
	has XSyncFence $!fid        ;
}

class xSyncWaitCondition is repr<CStruct> is export {
	has XSyncCounter $!counter           ;
	has CARD32       $!value_type        ;
	has INT32        $!wait_value_hi     ;
	has CARD32       $!wait_value_lo     ;
	has CARD32       $!test_type         ;
	has INT32        $!event_threshold_hi;
	has CARD32       $!event_threshold_lo;
}

class xValuatorInfo is repr<CStruct> is export {
	has CARD8  $!c_class           ;
	has CARD8  $!class             ;
	has CARD8  $!length            ;
	has CARD8  $!num_axes          ;
	has CARD8  $!mode              ;
	has CARD32 $!motion_buffer_size;
}

class xauth is repr<CStruct> is export {
	has short $!family        ;
	has short $!address_length;
	has Str   $!address       ;
	has short $!number_length ;
	has Str   $!number        ;
	has short $!name_length   ;
	has Str   $!name          ;
	has short $!data_length   ;
	has Str   $!data          ;
}

class xkbAccessXNotify is repr<CStruct> is export {
	has BYTE    $!type          ;
	has BYTE    $!xkbType       ;
	has CARD16  $!sequenceNumber;
	has Time    $!time          ;
	has CARD8   $!deviceID      ;
	has KeyCode $!keycode       ;
	has CARD16  $!detail        ;
	has CARD16  $!slowKeysDelay ;
	has CARD16  $!debounceDelay ;
	has CARD32  $!pad1          ;
	has CARD32  $!pad2          ;
	has CARD32  $!pad3          ;
	has CARD32  $!pad4          ;
}

class xkbActionMessage is repr<CStruct> is export {
	has BYTE    $!type           ;
	has BYTE    $!xkbType        ;
	has CARD16  $!sequenceNumber ;
	has Time    $!time           ;
	has CARD8   $!deviceID       ;
	has KeyCode $!keycode        ;
	has BOOL    $!press          ;
	has BOOL    $!keyEventFollows;
	has CARD8   $!mods           ;
	has CARD8   $!group          ;
	has CARD8   $!message        ;
	has CARD16  $!pad1           ;
	has CARD32  $!pad2           ;
	has CARD32  $!pad3           ;
}

class xkbActionWireDesc is repr<CStruct> is export {
	has CARD8 $!type;
	has CARD8 $!data;
}

class xkbAnyDoodadWireDesc is repr<CStruct> is export {
	has Atom   $!name    ;
	has CARD8  $!type    ;
	has CARD8  $!priority;
	has INT16  $!top     ;
	has INT16  $!left    ;
	has INT16  $!angle   ;
	has CARD32 $!pad2    ;
	has CARD32 $!pad3    ;
}

class xkbAnyEvent is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!xkbType       ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD8  $!deviceID      ;
	has CARD8  $!pad1          ;
	has CARD16 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
	has CARD32 $!pad6          ;
	has CARD32 $!pad7          ;
}

class xkbBehaviorWireDesc is repr<CStruct> is export {
	has CARD8 $!key ;
	has CARD8 $!type;
	has CARD8 $!data;
	has CARD8 $!pad ;
}

class xkbBell is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!bellClass ;
	has CARD16 $!bellID    ;
	has INT8   $!percent   ;
	has BOOL   $!forceSound;
	has BOOL   $!eventOnly ;
	has CARD8  $!pad1      ;
	has INT16  $!pitch     ;
	has INT16  $!duration  ;
	has CARD16 $!pad2      ;
	has Atom   $!name      ;
	has Window $!window    ;
}

class xkbBellNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!xkbType       ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD8  $!deviceID      ;
	has CARD8  $!bellClass     ;
	has CARD8  $!bellID        ;
	has CARD8  $!percent       ;
	has CARD16 $!pitch         ;
	has CARD16 $!duration      ;
	has Atom   $!name          ;
	has Window $!window        ;
	has BOOL   $!eventOnly     ;
	has CARD8  $!pad1          ;
	has CARD16 $!pad2          ;
	has CARD32 $!pad3          ;
}

class xkbCompatMapNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!xkbType       ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD8  $!deviceID      ;
	has CARD8  $!changedGroups ;
	has CARD16 $!firstSI       ;
	has CARD16 $!nSI           ;
	has CARD16 $!nTotalSI      ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
}

class xkbControlsNotify is repr<CStruct> is export {
	has BYTE    $!type                 ;
	has BYTE    $!xkbType              ;
	has CARD16  $!sequenceNumber       ;
	has Time    $!time                 ;
	has CARD8   $!deviceID             ;
	has CARD8   $!numGroups            ;
	has CARD16  $!pad1                 ;
	has CARD32  $!changedControls      ;
	has CARD32  $!enabledControls      ;
	has CARD32  $!enabledControlChanges;
	has KeyCode $!keycode              ;
	has CARD8   $!eventType            ;
	has CARD8   $!requestMajor         ;
	has CARD8   $!requestMinor         ;
	has CARD32  $!pad2                 ;
}

class xkbDeviceLedsWireDesc is repr<CStruct> is export {
	has CARD16 $!ledClass      ;
	has CARD16 $!ledID         ;
	has CARD32 $!namesPresent  ;
	has CARD32 $!mapsPresent   ;
	has CARD32 $!physIndicators;
	has CARD32 $!state         ;
}

class xkbExtensionDeviceNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!xkbType       ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD8  $!deviceID      ;
	has CARD8  $!pad1          ;
	has CARD16 $!reason        ;
	has CARD16 $!ledClass      ;
	has CARD16 $!ledID         ;
	has CARD32 $!ledsDefined   ;
	has CARD32 $!ledState      ;
	has CARD8  $!firstBtn      ;
	has CARD8  $!nBtns         ;
	has CARD16 $!supported     ;
	has CARD16 $!unsupported   ;
	has CARD16 $!pad3          ;
}

class xkbGetCompatMap is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD8  $!groups    ;
	has BOOL   $!getAllSI  ;
	has CARD16 $!firstSI   ;
	has CARD16 $!nSI       ;
}

class xkbGetCompatMapReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD8  $!groups        ;
	has CARD8  $!pad1          ;
	has CARD16 $!firstSI       ;
	has CARD16 $!nSI           ;
	has CARD16 $!nTotalSI      ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class xkbGetControls is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad       ;
}

class xkbGetDeviceInfo is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!wanted    ;
	has BOOL   $!allBtns   ;
	has CARD8  $!firstBtn  ;
	has CARD8  $!nBtns     ;
	has CARD8  $!pad       ;
	has CARD16 $!ledClass  ;
	has CARD16 $!ledID     ;
}

class xkbGetDeviceInfoReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!present       ;
	has CARD16 $!supported     ;
	has CARD16 $!unsupported   ;
	has CARD16 $!nDeviceLedFBs ;
	has CARD8  $!firstBtnWanted;
	has CARD8  $!nBtnsWanted   ;
	has CARD8  $!firstBtnRtrn  ;
	has CARD8  $!nBtnsRtrn     ;
	has CARD8  $!totalBtns     ;
	has BOOL   $!hasOwnState   ;
	has CARD16 $!dfltKbdFB     ;
	has CARD16 $!dfltLedFB     ;
	has CARD16 $!pad           ;
	has Atom   $!devType       ;
}

class xkbGetGeometry is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad       ;
	has Atom   $!name      ;
}

class xkbGetGeometryReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has Atom   $!name          ;
	has BOOL   $!found         ;
	has CARD8  $!pad           ;
	has CARD16 $!widthMM       ;
	has CARD16 $!heightMM      ;
	has CARD16 $!nProperties   ;
	has CARD16 $!nColors       ;
	has CARD16 $!nShapes       ;
	has CARD16 $!nSections     ;
	has CARD16 $!nDoodads      ;
	has CARD16 $!nKeyAliases   ;
	has CARD8  $!baseColorNdx  ;
	has CARD8  $!labelColorNdx ;
}

class xkbGetIndicatorMap is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad       ;
	has CARD32 $!which     ;
}

class xkbGetIndicatorMapReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD32 $!which         ;
	has CARD32 $!realIndicators;
	has CARD8  $!nIndicators   ;
	has CARD8  $!pad1          ;
	has CARD16 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class xkbGetIndicatorState is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad1      ;
}

class xkbGetIndicatorStateReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD32 $!state         ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class xkbGetKbdByName is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!need      ;
	has CARD16 $!want      ;
	has BOOL   $!load      ;
	has CARD8  $!pad       ;
}

class xkbGetKbdByNameReply is repr<CStruct> is export {
	has CARD8   $!type          ;
	has CARD8   $!deviceID      ;
	has CARD16  $!sequenceNumber;
	has CARD32  $!length        ;
	has KeyCode $!minKeyCode    ;
	has KeyCode $!maxKeyCode    ;
	has BOOL    $!loaded        ;
	has BOOL    $!newKeyboard   ;
	has CARD16  $!found         ;
	has CARD16  $!reported      ;
	has CARD32  $!pad1          ;
	has CARD32  $!pad2          ;
	has CARD32  $!pad3          ;
	has CARD32  $!pad4          ;
}

class xkbGetMap is repr<CStruct> is export {
	has CARD8   $!reqType         ;
	has CARD8   $!xkbReqType      ;
	has CARD16  $!length          ;
	has CARD16  $!deviceSpec      ;
	has CARD16  $!full            ;
	has CARD16  $!partial         ;
	has CARD8   $!firstType       ;
	has CARD8   $!nTypes          ;
	has KeyCode $!firstKeySym     ;
	has CARD8   $!nKeySyms        ;
	has KeyCode $!firstKeyAct     ;
	has CARD8   $!nKeyActs        ;
	has KeyCode $!firstKeyBehavior;
	has CARD8   $!nKeyBehaviors   ;
	has CARD16  $!virtualMods     ;
	has KeyCode $!firstKeyExplicit;
	has CARD8   $!nKeyExplicit    ;
	has KeyCode $!firstModMapKey  ;
	has CARD8   $!nModMapKeys     ;
	has KeyCode $!firstVModMapKey ;
	has CARD8   $!nVModMapKeys    ;
	has CARD16  $!pad1            ;
}

class xkbGetMapReply is repr<CStruct> is export {
	has CARD8   $!type             ;
	has CARD8   $!deviceID         ;
	has CARD16  $!sequenceNumber   ;
	has CARD32  $!length           ;
	has CARD16  $!pad1             ;
	has KeyCode $!minKeyCode       ;
	has KeyCode $!maxKeyCode       ;
	has CARD16  $!present          ;
	has CARD8   $!firstType        ;
	has CARD8   $!nTypes           ;
	has CARD8   $!totalTypes       ;
	has KeyCode $!firstKeySym      ;
	has CARD16  $!totalSyms        ;
	has CARD8   $!nKeySyms         ;
	has KeyCode $!firstKeyAct      ;
	has CARD16  $!totalActs        ;
	has CARD8   $!nKeyActs         ;
	has KeyCode $!firstKeyBehavior ;
	has CARD8   $!nKeyBehaviors    ;
	has CARD8   $!totalKeyBehaviors;
	has KeyCode $!firstKeyExplicit ;
	has CARD8   $!nKeyExplicit     ;
	has CARD8   $!totalKeyExplicit ;
	has KeyCode $!firstModMapKey   ;
	has CARD8   $!nModMapKeys      ;
	has CARD8   $!totalModMapKeys  ;
	has KeyCode $!firstVModMapKey  ;
	has CARD8   $!nVModMapKeys     ;
	has CARD8   $!totalVModMapKeys ;
	has CARD8   $!pad2             ;
	has CARD16  $!virtualMods      ;
}

class xkbGetNamedIndicator is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!ledClass  ;
	has CARD16 $!ledID     ;
	has CARD16 $!pad1      ;
	has Atom   $!indicator ;
}

class xkbGetNamedIndicatorReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has Atom   $!indicator     ;
	has BOOL   $!found         ;
	has BOOL   $!on            ;
	has BOOL   $!realIndicator ;
	has CARD8  $!ndx           ;
	has CARD8  $!flags         ;
	has CARD8  $!whichGroups   ;
	has CARD8  $!groups        ;
	has CARD8  $!whichMods     ;
	has CARD8  $!mods          ;
	has CARD8  $!realMods      ;
	has CARD16 $!virtualMods   ;
	has CARD32 $!ctrls         ;
	has BOOL   $!supported     ;
	has CARD8  $!pad1          ;
	has CARD16 $!pad2          ;
}

class xkbGetNames is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad       ;
	has CARD32 $!which     ;
}

class xkbGetNamesReply is repr<CStruct> is export {
	has BYTE    $!type          ;
	has BYTE    $!deviceID      ;
	has CARD16  $!sequenceNumber;
	has CARD32  $!length        ;
	has CARD32  $!which         ;
	has KeyCode $!minKeyCode    ;
	has KeyCode $!maxKeyCode    ;
	has CARD8   $!nTypes        ;
	has CARD8   $!groupNames    ;
	has CARD16  $!virtualMods   ;
	has KeyCode $!firstKey      ;
	has CARD8   $!nKeys         ;
	has CARD32  $!indicators    ;
	has CARD8   $!nRadioGroups  ;
	has CARD8   $!nKeyAliases   ;
	has CARD16  $!nKTLevels     ;
	has CARD32  $!pad3          ;
}

class xkbGetState is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad       ;
}

class xkbGetStateReply is repr<CStruct> is export {
	has BYTE   $!type            ;
	has BYTE   $!deviceID        ;
	has CARD16 $!sequenceNumber  ;
	has CARD32 $!length          ;
	has CARD8  $!mods            ;
	has CARD8  $!baseMods        ;
	has CARD8  $!latchedMods     ;
	has CARD8  $!lockedMods      ;
	has CARD8  $!group           ;
	has CARD8  $!lockedGroup     ;
	has INT16  $!baseGroup       ;
	has INT16  $!latchedGroup    ;
	has CARD8  $!compatState     ;
	has CARD8  $!grabMods        ;
	has CARD8  $!compatGrabMods  ;
	has CARD8  $!lookupMods      ;
	has CARD8  $!compatLookupMods;
	has CARD8  $!pad1            ;
	has CARD16 $!ptrBtnState     ;
	has CARD16 $!pad2            ;
	has CARD32 $!pad3            ;
}

class xkbIndicatorDoodadWireDesc is repr<CStruct> is export {
	has Atom   $!name       ;
	has CARD8  $!type       ;
	has CARD8  $!priority   ;
	has INT16  $!top        ;
	has INT16  $!left       ;
	has INT16  $!angle      ;
	has CARD8  $!shapeNdx   ;
	has CARD8  $!onColorNdx ;
	has CARD8  $!offColorNdx;
	has CARD8  $!pad1       ;
	has CARD32 $!pad2       ;
}

class xkbIndicatorMapWireDesc is repr<CStruct> is export {
	has CARD8  $!flags      ;
	has CARD8  $!whichGroups;
	has CARD8  $!groups     ;
	has CARD8  $!whichMods  ;
	has CARD8  $!mods       ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
	has CARD32 $!ctrls      ;
}

class xkbIndicatorNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!xkbType       ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD8  $!deviceID      ;
	has CARD8  $!pad1          ;
	has CARD16 $!pad2          ;
	has CARD32 $!state         ;
	has CARD32 $!changed       ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class xkbKTMapEntryWireDesc is repr<CStruct> is export {
	has BOOL   $!active     ;
	has CARD8  $!mask       ;
	has CARD8  $!level      ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
	has CARD16 $!pad        ;
}

class xkbKTSetMapEntryWireDesc is repr<CStruct> is export {
	has CARD8  $!level      ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
}

class xkbKeyTypeWireDesc is repr<CStruct> is export {
	has CARD8  $!mask       ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
	has CARD8  $!numLevels  ;
	has CARD8  $!nMapEntries;
	has BOOL   $!preserve   ;
	has CARD8  $!pad        ;
}

class xkbLatchLockState is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!xkbReqType      ;
	has CARD16 $!length          ;
	has CARD16 $!deviceSpec      ;
	has CARD8  $!affectModLocks  ;
	has CARD8  $!modLocks        ;
	has BOOL   $!lockGroup       ;
	has CARD8  $!groupLock       ;
	has CARD8  $!affectModLatches;
	has CARD8  $!modLatches      ;
	has CARD8  $!pad             ;
	has BOOL   $!latchGroup      ;
	has INT16  $!groupLatch      ;
}

class xkbListComponents is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!maxNames  ;
}

class xkbListComponentsReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!nKeymaps      ;
	has CARD16 $!nKeycodes     ;
	has CARD16 $!nTypes        ;
	has CARD16 $!nCompatMaps   ;
	has CARD16 $!nSymbols      ;
	has CARD16 $!nGeometries   ;
	has CARD16 $!extra         ;
	has CARD16 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
}

class xkbLogoDoodadWireDesc is repr<CStruct> is export {
	has Atom   $!name    ;
	has CARD8  $!type    ;
	has CARD8  $!priority;
	has INT16  $!top     ;
	has INT16  $!left    ;
	has INT16  $!angle   ;
	has CARD8  $!colorNdx;
	has CARD8  $!shapeNdx;
	has CARD16 $!pad1    ;
	has CARD32 $!pad2    ;
}

class xkbMapNotify is repr<CStruct> is export {
	has BYTE    $!type            ;
	has BYTE    $!xkbType         ;
	has CARD16  $!sequenceNumber  ;
	has Time    $!time            ;
	has CARD8   $!deviceID        ;
	has CARD8   $!ptrBtnActions   ;
	has CARD16  $!changed         ;
	has KeyCode $!minKeyCode      ;
	has KeyCode $!maxKeyCode      ;
	has CARD8   $!firstType       ;
	has CARD8   $!nTypes          ;
	has KeyCode $!firstKeySym     ;
	has CARD8   $!nKeySyms        ;
	has KeyCode $!firstKeyAct     ;
	has CARD8   $!nKeyActs        ;
	has KeyCode $!firstKeyBehavior;
	has CARD8   $!nKeyBehaviors   ;
	has KeyCode $!firstKeyExplicit;
	has CARD8   $!nKeyExplicit    ;
	has KeyCode $!firstModMapKey  ;
	has CARD8   $!nModMapKeys     ;
	has KeyCode $!firstVModMapKey ;
	has CARD8   $!nVModMapKeys    ;
	has CARD16  $!virtualMods     ;
	has CARD16  $!pad1            ;
}

class xkbModsWireDesc is repr<CStruct> is export {
	has CARD8  $!mask       ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
}

class xkbNamesNotify is repr<CStruct> is export {
	has BYTE   $!type              ;
	has BYTE   $!xkbType           ;
	has CARD16 $!sequenceNumber    ;
	has Time   $!time              ;
	has CARD8  $!deviceID          ;
	has CARD8  $!pad1              ;
	has CARD16 $!changed           ;
	has CARD8  $!firstType         ;
	has CARD8  $!nTypes            ;
	has CARD8  $!firstLevelName    ;
	has CARD8  $!nLevelNames       ;
	has CARD8  $!pad2              ;
	has CARD8  $!nRadioGroups      ;
	has CARD8  $!nAliases          ;
	has CARD8  $!changedGroupNames ;
	has CARD16 $!changedVirtualMods;
	has CARD8  $!firstKey          ;
	has CARD8  $!nKeys             ;
	has CARD32 $!changedIndicators ;
	has CARD32 $!pad3              ;
}

class xkbNewKeyboardNotify is repr<CStruct> is export {
	has BYTE    $!type          ;
	has BYTE    $!xkbType       ;
	has CARD16  $!sequenceNumber;
	has Time    $!time          ;
	has CARD8   $!deviceID      ;
	has CARD8   $!oldDeviceID   ;
	has KeyCode $!minKeyCode    ;
	has KeyCode $!maxKeyCode    ;
	has KeyCode $!oldMinKeyCode ;
	has KeyCode $!oldMaxKeyCode ;
	has CARD8   $!requestMajor  ;
	has CARD8   $!requestMinor  ;
	has CARD16  $!changed       ;
	has CARD8   $!detail        ;
	has CARD8   $!pad1          ;
	has CARD32  $!pad2          ;
	has CARD32  $!pad3          ;
	has CARD32  $!pad4          ;
}

class xkbOutlineWireDesc is repr<CStruct> is export {
	has CARD8  $!nPoints     ;
	has CARD8  $!cornerRadius;
	has CARD16 $!pad         ;
}

class xkbOverlayRowWireDesc is repr<CStruct> is export {
	has CARD8  $!rowUnder;
	has CARD8  $!nKeys   ;
	has CARD16 $!pad1    ;
}

class xkbOverlayWireDesc is repr<CStruct> is export {
	has Atom   $!name ;
	has CARD8  $!nRows;
	has CARD8  $!pad1 ;
	has CARD16 $!pad2 ;
}

class xkbPerClientFlags is repr<CStruct> is export {
	has CARD8  $!reqType       ;
	has CARD8  $!xkbReqType    ;
	has CARD16 $!length        ;
	has CARD16 $!deviceSpec    ;
	has CARD16 $!pad1          ;
	has CARD32 $!change        ;
	has CARD32 $!value         ;
	has CARD32 $!ctrlsToChange ;
	has CARD32 $!autoCtrls     ;
	has CARD32 $!autoCtrlValues;
}

class xkbPerClientFlagsReply is repr<CStruct> is export {
	has CARD8  $!type          ;
	has CARD8  $!deviceID      ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD32 $!supported     ;
	has CARD32 $!value         ;
	has CARD32 $!autoCtrls     ;
	has CARD32 $!autoCtrlValues;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
}

class xkbPointWireDesc is repr<CStruct> is export {
	has INT16 $!x;
	has INT16 $!y;
}

class xkbRowWireDesc is repr<CStruct> is export {
	has INT16  $!top     ;
	has INT16  $!left    ;
	has CARD8  $!nKeys   ;
	has BOOL   $!vertical;
	has CARD16 $!pad     ;
}

class xkbSectionWireDesc is repr<CStruct> is export {
	has Atom   $!name     ;
	has INT16  $!top      ;
	has INT16  $!left     ;
	has CARD16 $!width    ;
	has CARD16 $!height   ;
	has INT16  $!angle    ;
	has CARD8  $!priority ;
	has CARD8  $!nRows    ;
	has CARD8  $!nDoodads ;
	has CARD8  $!nOverlays;
	has CARD16 $!pad      ;
}

class xkbSelectEvents is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xkbReqType ;
	has CARD16 $!length     ;
	has CARD16 $!deviceSpec ;
	has CARD16 $!affectWhich;
	has CARD16 $!clear      ;
	has CARD16 $!selectAll  ;
	has CARD16 $!affectMap  ;
	has CARD16 $!map        ;
}

class xkbSetCompatMap is repr<CStruct> is export {
	has CARD8  $!reqType         ;
	has CARD8  $!xkbReqType      ;
	has CARD16 $!length          ;
	has CARD16 $!deviceSpec      ;
	has CARD8  $!pad1            ;
	has BOOL   $!recomputeActions;
	has BOOL   $!truncateSI      ;
	has CARD8  $!groups          ;
	has CARD16 $!firstSI         ;
	has CARD16 $!nSI             ;
	has CARD16 $!pad2            ;
}

class xkbSetDebuggingFlags is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xkbReqType ;
	has CARD16 $!length     ;
	has CARD16 $!msgLength  ;
	has CARD16 $!pad        ;
	has CARD32 $!affectFlags;
	has CARD32 $!flags      ;
	has CARD32 $!affectCtrls;
	has CARD32 $!ctrls      ;
}

class xkbSetDebuggingFlagsReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has CARD8  $!pad0          ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD32 $!currentFlags  ;
	has CARD32 $!currentCtrls  ;
	has CARD32 $!supportedFlags;
	has CARD32 $!supportedCtrls;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
}

class xkbSetDeviceInfo is repr<CStruct> is export {
	has CARD8  $!reqType      ;
	has CARD8  $!xkbReqType   ;
	has CARD16 $!length       ;
	has CARD16 $!deviceSpec   ;
	has CARD8  $!firstBtn     ;
	has CARD8  $!nBtns        ;
	has CARD16 $!change       ;
	has CARD16 $!nDeviceLedFBs;
}

class xkbSetGeometry is repr<CStruct> is export {
	has CARD8  $!reqType      ;
	has CARD8  $!xkbReqType   ;
	has CARD16 $!length       ;
	has CARD16 $!deviceSpec   ;
	has CARD8  $!nShapes      ;
	has CARD8  $!nSections    ;
	has Atom   $!name         ;
	has CARD16 $!widthMM      ;
	has CARD16 $!heightMM     ;
	has CARD16 $!nProperties  ;
	has CARD16 $!nColors      ;
	has CARD16 $!nDoodads     ;
	has CARD16 $!nKeyAliases  ;
	has CARD8  $!baseColorNdx ;
	has CARD8  $!labelColorNdx;
	has CARD16 $!pad          ;
}

class xkbSetIndicatorMap is repr<CStruct> is export {
	has CARD8  $!reqType   ;
	has CARD8  $!xkbReqType;
	has CARD16 $!length    ;
	has CARD16 $!deviceSpec;
	has CARD16 $!pad1      ;
	has CARD32 $!which     ;
}

class xkbSetMap is repr<CStruct> is export {
	has CARD8   $!reqType          ;
	has CARD8   $!xkbReqType       ;
	has CARD16  $!length           ;
	has CARD16  $!deviceSpec       ;
	has CARD16  $!present          ;
	has CARD16  $!flags            ;
	has KeyCode $!minKeyCode       ;
	has KeyCode $!maxKeyCode       ;
	has CARD8   $!firstType        ;
	has CARD8   $!nTypes           ;
	has KeyCode $!firstKeySym      ;
	has CARD8   $!nKeySyms         ;
	has CARD16  $!totalSyms        ;
	has KeyCode $!firstKeyAct      ;
	has CARD8   $!nKeyActs         ;
	has CARD16  $!totalActs        ;
	has KeyCode $!firstKeyBehavior ;
	has CARD8   $!nKeyBehaviors    ;
	has CARD8   $!totalKeyBehaviors;
	has KeyCode $!firstKeyExplicit ;
	has CARD8   $!nKeyExplicit     ;
	has CARD8   $!totalKeyExplicit ;
	has KeyCode $!firstModMapKey   ;
	has CARD8   $!nModMapKeys      ;
	has CARD8   $!totalModMapKeys  ;
	has KeyCode $!firstVModMapKey  ;
	has CARD8   $!nVModMapKeys     ;
	has CARD8   $!totalVModMapKeys ;
	has CARD16  $!virtualMods      ;
}

class xkbSetNamedIndicator is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xkbReqType ;
	has CARD16 $!length     ;
	has CARD16 $!deviceSpec ;
	has CARD16 $!ledClass   ;
	has CARD16 $!ledID      ;
	has CARD16 $!pad1       ;
	has Atom   $!indicator  ;
	has BOOL   $!setState   ;
	has BOOL   $!on         ;
	has BOOL   $!setMap     ;
	has BOOL   $!createMap  ;
	has CARD8  $!pad2       ;
	has CARD8  $!flags      ;
	has CARD8  $!whichGroups;
	has CARD8  $!groups     ;
	has CARD8  $!whichMods  ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
	has CARD32 $!ctrls      ;
}

class xkbSetNames is repr<CStruct> is export {
	has CARD8   $!reqType          ;
	has CARD8   $!xkbReqType       ;
	has CARD16  $!length           ;
	has CARD16  $!deviceSpec       ;
	has CARD16  $!virtualMods      ;
	has CARD32  $!which            ;
	has CARD8   $!firstType        ;
	has CARD8   $!nTypes           ;
	has CARD8   $!firstKTLevel     ;
	has CARD8   $!nKTLevels        ;
	has CARD32  $!indicators       ;
	has CARD8   $!groupNames       ;
	has CARD8   $!nRadioGroups     ;
	has KeyCode $!firstKey         ;
	has CARD8   $!nKeys            ;
	has CARD8   $!nKeyAliases      ;
	has CARD8   $!pad1             ;
	has CARD16  $!totalKTLevelNames;
}

class xkbShapeDoodadWireDesc is repr<CStruct> is export {
	has Atom   $!name    ;
	has CARD8  $!type    ;
	has CARD8  $!priority;
	has INT16  $!top     ;
	has INT16  $!left    ;
	has INT16  $!angle   ;
	has CARD8  $!colorNdx;
	has CARD8  $!shapeNdx;
	has CARD16 $!pad1    ;
	has CARD32 $!pad2    ;
}

class xkbShapeWireDesc is repr<CStruct> is export {
	has Atom  $!name      ;
	has CARD8 $!nOutlines ;
	has CARD8 $!primaryNdx;
	has CARD8 $!approxNdx ;
	has CARD8 $!pad       ;
}

class xkbStateNotify is repr<CStruct> is export {
	has BYTE    $!type            ;
	has BYTE    $!xkbType         ;
	has CARD16  $!sequenceNumber  ;
	has Time    $!time            ;
	has CARD8   $!deviceID        ;
	has CARD8   $!mods            ;
	has CARD8   $!baseMods        ;
	has CARD8   $!latchedMods     ;
	has CARD8   $!lockedMods      ;
	has CARD8   $!group           ;
	has INT16   $!baseGroup       ;
	has INT16   $!latchedGroup    ;
	has CARD8   $!lockedGroup     ;
	has CARD8   $!compatState     ;
	has CARD8   $!grabMods        ;
	has CARD8   $!compatGrabMods  ;
	has CARD8   $!lookupMods      ;
	has CARD8   $!compatLookupMods;
	has CARD16  $!ptrBtnState     ;
	has CARD16  $!changed         ;
	has KeyCode $!keycode         ;
	has CARD8   $!eventType       ;
	has CARD8   $!requestMajor    ;
	has CARD8   $!requestMinor    ;
}

class xkbSymInterpretWireDesc is repr<CStruct> is export {
	has CARD32            $!sym       ;
	has CARD8             $!mods      ;
	has CARD8             $!match     ;
	has CARD8             $!virtualMod;
	has CARD8             $!flags     ;
	has xkbActionWireDesc $!act       ;
}

class xkbTextDoodadWireDesc is repr<CStruct> is export {
	has Atom   $!name    ;
	has CARD8  $!type    ;
	has CARD8  $!priority;
	has INT16  $!top     ;
	has INT16  $!left    ;
	has INT16  $!angle   ;
	has CARD16 $!width   ;
	has CARD16 $!height  ;
	has CARD8  $!colorNdx;
	has CARD8  $!pad1    ;
	has CARD16 $!pad2    ;
}

class xkbUseExtension is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!xkbReqType ;
	has CARD16 $!length     ;
	has CARD16 $!wantedMajor;
	has CARD16 $!wantedMinor;
}

class xkbUseExtensionReply is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BOOL   $!supported     ;
	has CARD16 $!sequenceNumber;
	has CARD32 $!length        ;
	has CARD16 $!serverMajor   ;
	has CARD16 $!serverMinor   ;
	has CARD32 $!pad1          ;
	has CARD32 $!pad2          ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
}

class xkbVModMapWireDesc is repr<CStruct> is export {
	has KeyCode $!key  ;
	has CARD8   $!pad  ;
	has CARD16  $!vmods;
}

class xkmActionDesc is repr<CStruct> is export {
	has CARD8 $!type;
	has CARD8 $!data;
}

class xkmAnyDoodadDesc is repr<CStruct> is export {
	has CARD8  $!type    ;
	has CARD8  $!priority;
	has INT16  $!top     ;
	has INT16  $!left    ;
	has CARD16 $!pad1    ;
	has CARD32 $!pad2    ;
	has CARD32 $!pad3    ;
}

class xkmBehaviorDesc is repr<CStruct> is export {
	has CARD8  $!type;
	has CARD8  $!data;
	has CARD16 $!pad ;
}

class xkmFileInfo is repr<CStruct> is export {
	has CARD8  $!type   ;
	has CARD8  $!min_kc ;
	has CARD8  $!max_kc ;
	has CARD8  $!num_toc;
	has CARD16 $!present;
	has CARD16 $!pad    ;
}

class xkmGeometryDesc is repr<CStruct> is export {
	has CARD16 $!width_mm       ;
	has CARD16 $!height_mm      ;
	has CARD8  $!base_color_ndx ;
	has CARD8  $!label_color_ndx;
	has CARD16 $!num_properties ;
	has CARD16 $!num_colors     ;
	has CARD16 $!num_shapes     ;
	has CARD16 $!num_sections   ;
	has CARD16 $!num_doodads    ;
	has CARD16 $!num_key_aliases;
	has CARD16 $!pad1           ;
}

class xkmIndicatorDoodadDesc is repr<CStruct> is export {
	has CARD8  $!type         ;
	has CARD8  $!priority     ;
	has INT16  $!top          ;
	has INT16  $!left         ;
	has CARD8  $!shape_ndx    ;
	has CARD8  $!on_color_ndx ;
	has CARD8  $!off_color_ndx;
	has CARD8  $!pad1         ;
	has CARD16 $!pad2         ;
	has CARD32 $!pad3         ;
}

class xkmIndicatorMapDesc is repr<CStruct> is export {
	has CARD8  $!indicator   ;
	has CARD8  $!flags       ;
	has CARD8  $!which_mods  ;
	has CARD8  $!real_mods   ;
	has CARD16 $!vmods       ;
	has CARD8  $!which_groups;
	has CARD8  $!groups      ;
	has CARD32 $!ctrls       ;
}

class xkmKTMapEntryDesc is repr<CStruct> is export {
	has CARD8  $!level      ;
	has CARD8  $!realMods   ;
	has CARD16 $!virtualMods;
}

class xkmKeySymMapDesc is repr<CStruct> is export {
	has CARD8 $!width       ;
	has CARD8 $!num_groups  ;
	has CARD8 $!modifier_map;
	has CARD8 $!flags       ;
}

class xkmKeyTypeDesc is repr<CStruct> is export {
	has CARD8  $!realMods   ;
	has CARD8  $!numLevels  ;
	has CARD16 $!virtualMods;
	has CARD8  $!nMapEntries;
	has CARD8  $!nLevelNames;
	has CARD8  $!preserve   ;
	has CARD8  $!pad        ;
}

class xkmLogoDoodadDesc is repr<CStruct> is export {
	has CARD8  $!type     ;
	has CARD8  $!priority ;
	has INT16  $!top      ;
	has INT16  $!left     ;
	has INT16  $!angle    ;
	has CARD8  $!color_ndx;
	has CARD8  $!shape_ndx;
	has CARD16 $!pad      ;
	has CARD32 $!pad1     ;
}

class xkmModsDesc is repr<CStruct> is export {
	has CARD8  $!realMods   ;
	has CARD8  $!pad        ;
	has CARD16 $!virtualMods;
}

class xkmOutlineDesc is repr<CStruct> is export {
	has CARD8  $!num_points   ;
	has CARD8  $!corner_radius;
	has CARD16 $!pad          ;
}

class xkmOverlayDesc is repr<CStruct> is export {
	has CARD8  $!num_rows;
	has CARD8  $!pad1    ;
	has CARD16 $!pad2    ;
}

class xkmOverlayRowDesc is repr<CStruct> is export {
	has CARD8  $!row_under;
	has CARD8  $!num_keys ;
	has CARD16 $!pad      ;
}

class xkmPointDesc is repr<CStruct> is export {
	has INT16 $!x;
	has INT16 $!y;
}

class xkmRowDesc is repr<CStruct> is export {
	has INT16  $!top     ;
	has INT16  $!left    ;
	has CARD8  $!num_keys;
	has BOOL   $!vertical;
	has CARD16 $!pad     ;
}

class xkmSectionDesc is repr<CStruct> is export {
	has INT16  $!top         ;
	has INT16  $!left        ;
	has CARD16 $!width       ;
	has CARD16 $!height      ;
	has INT16  $!angle       ;
	has CARD8  $!priority    ;
	has CARD8  $!num_rows    ;
	has CARD8  $!num_doodads ;
	has CARD8  $!num_overlays;
	has CARD16 $!pad2        ;
}

class xkmSectionInfo is repr<CStruct> is export {
	has CARD16 $!type  ;
	has CARD16 $!format;
	has CARD16 $!size  ;
	has CARD16 $!offset;
}

class xkmShapeDesc is repr<CStruct> is export {
	has CARD8 $!num_outlines;
	has CARD8 $!primary_ndx ;
	has CARD8 $!approx_ndx  ;
	has CARD8 $!pad         ;
}

class xkmShapeDoodadDesc is repr<CStruct> is export {
	has CARD8  $!type     ;
	has CARD8  $!priority ;
	has INT16  $!top      ;
	has INT16  $!left     ;
	has INT16  $!angle    ;
	has CARD8  $!color_ndx;
	has CARD8  $!shape_ndx;
	has CARD16 $!pad      ;
	has CARD32 $!pad1     ;
}

class xkmSymInterpretDesc is repr<CStruct> is export {
	has CARD32 $!sym       ;
	has CARD8  $!mods      ;
	has CARD8  $!match     ;
	has CARD8  $!virtualMod;
	has CARD8  $!flags     ;
	has CARD8  $!actionType;
	has CARD8  $!actionData;
}

class xkmTextDoodadDesc is repr<CStruct> is export {
	has CARD8  $!type     ;
	has CARD8  $!priority ;
	has INT16  $!top      ;
	has INT16  $!left     ;
	has INT16  $!angle    ;
	has CARD16 $!width    ;
	has CARD16 $!height   ;
	has CARD8  $!color_ndx;
	has CARD8  $!pad1     ;
	has CARD16 $!pad2     ;
}

class xkmVModMapDesc is repr<CStruct> is export {
	has CARD8  $!key  ;
	has CARD8  $!pad  ;
	has CARD16 $!vmods;
}

class xthread_waiter is repr<CStruct> is export {
	has HANDLE          $!sem ;
	has xthread_waiter  $!next;
}

class xwd_file_header is repr<CStruct> is export {
	has CARD32 $!header_size     ;
	has CARD32 $!file_version    ;
	has CARD32 $!pixmap_format   ;
	has CARD32 $!pixmap_depth    ;
	has CARD32 $!pixmap_width    ;
	has CARD32 $!pixmap_height   ;
	has CARD32 $!xoffset         ;
	has CARD32 $!byte_order      ;
	has CARD32 $!bitmap_unit     ;
	has CARD32 $!bitmap_bit_order;
	has CARD32 $!bitmap_pad      ;
	has CARD32 $!bits_per_pixel  ;
	has CARD32 $!bytes_per_line  ;
	has CARD32 $!visual_class    ;
	has CARD32 $!red_mask        ;
	has CARD32 $!green_mask      ;
	has CARD32 $!blue_mask       ;
	has CARD32 $!bits_per_rgb    ;
	has CARD32 $!colormap_entries;
	has CARD32 $!ncolors         ;
	has CARD32 $!window_width    ;
	has CARD32 $!window_height   ;
	has CARD32 $!window_x        ;
	has CARD32 $!window_y        ;
	has CARD32 $!window_bdrwidth ;
}

class Depth is repr<CStruct> is export {
  has realInt $.depth    is rw;
  has realInt $.nvisuals is rw;
  has Pointer $.visuals       ; #= tb:Visual
}

class Screen {
  has XExtData $.ext_data;                 #= - hook for extension to hang data
  has Display  $.display;                  #= - back pointer to display structure
  has Window   $.root            is rw;    #= - Root window id.
  has realInt  $.width           is rw;
  has realInt  $.height          is rw;    #= - width and height of screen
  has realInt  $.mwidth          is rw;
  has realInt  $.mheight         is rw;    #= - width and height of  in millimeters
  has realInt  $.ndepths         is rw;    #= - number of depths possible
  has Depth    $.depths;                   #= - list of allowable depths on the screen
  has realInt  $.root_depth;               #= - bits per pixel
  has Visual   $.root_visual;              #= - root visual
  has GC       $.default_gc;               #= - GC for the root root visual
  has Colormap $.cmap            is rw;    #= - default color map

  # White and Black pixel values
  has ulong    $.white_pixel     is rw;
  has ulong    $.black_pixel     is rw;

  # max and min color maps
  has realInt  $.max_maps        is rw;
  has realInt  $.min_maps        is rw;
  has realInt  $.backing_store   is rw;    #= - Never, WhenMapped, Always
  has Boolean  $.save_unders     is rw;    #= ot:Bool
  has ulong    $.root_input_mask is rw;    #= -initial root input mask
}

class XcmsInfo is repr<CStruct> {
  has XPointer $.defaultCCCs;            #= pointer to an array of default XcmsCCC
  has XPointer $.clientCmaps;            #= pointer to linked list of XcmsCmapRec
  has XPointer $.perVisualIntensityMaps; #= linked list of XcmsIntensityMap
}

class XModifierKeymap is repr<CStruct> is export {
  has realUInt $.max_keypermod is rw;
  has KeyCode  $.modifiermap;
}

class XInternalAsync is repr<CStruct> is export {
  has XInternalAsync $.next;

  # handler arguments:
  # rep is the generic reply that caused this handler
  # to be invoked.  It must also be passed to _XGetAsyncReply.
  # buf and len are opaque values that must be passed to
  # _XGetAsyncReply or _XGetAsyncData.
  # data is the closure stored in this struct.
  # The handler returns True iff it handled this reply.
  has Pointer  $.handler; #= fp:(Display*, xReply*, CArray[uint8], int, XPointer --> Bool);
  has XPointer $.data;
}

class XLockPtrs is repr<CStruct> is export {
  # used by all, including extensions; do not move
  has Pointer $.lock_display  ; #= fp:(Display *dpy, char *file, int line)
  has Pointer $.unlock_display; #= fp:(Display *dpy, char *file, int line)
}

class Display {
  has XExtData                 $.ext_data;                               #=                                                       - hook for extension to hang data
  has XFreeFuncs               $.free_funcs;                             #=                                                       - internal free functions
  has int                      $.fd;                                     #=                                                       - Network socket.
  has int                      $.conn_checker;                           #=                                                       - ugly thing used by _XEventsQueued
  has int                      $.proto_major_version;                    #=                                                       - maj. version of server's X protocol
  has int                      $.proto_minor_version;                    #=                                                       - minor version of server's X protocol
  has Str                      $.vendor;                                 #=                                                       - vendor of the server hardware
  has XID                      $.resource_base;                          #=                                                       - resource ID base
  has XID                      $.resource_mask;                          #=                                                       - resource ID mask bits
  has XID                      $.resource_id;                            #=                                                       - allocator current ID
  has int                      $.resource_shift;                         #=                                                       - allocator shift to correct bits
  has Pointer                  $.resource_alloc;                         #= fp:(XDisplay* --> XID)
  has int                      $.bitmap_unit;                            #=                                                       - padding and data requirements
  has int                      $.byte_order;                             #=                                                       - screen byte order, LSBFirst, MSBFirst
  has int                      $.bitmap_pad;                             #=                                                       - padding requirements on bitmaps
  has int                      $.bitmap_bit_order;                       #=                                                       - LeastSignificant or MostSignificant
  has int                      $.nformats;                               #=                                                       - number of pixmap formats in list
  has ScreenFormat             $.pixmap_format;                          #=                                                       - pixmap format list
  has int                      $.vnumber;                                #=                                                       - Xlib's X protocol version number.
  has int                      $.release;                                #=                                                       - release of the server
  has XSQEvent                 $.head;                                   #=                                                       -
  has XSQEvent                 $.tail;                                   #=                                                       - Input event queue.
  has int                      $.qlen;                                   #=                                                       - Length of input event queue
  has ulong                    $.last_request_read;                      #=                                                       - seq number of last event read
  has ulong                    $.request;                                #=                                                       - sequence number of last request.
  has Pointer                  $.last_req;                               #= ot:(char*)                                            - beginning of last request, or dummy
  has Pointer                  $.buffer;                                 #= ot:(char*)                                            - Output buffer starting address.
  has Pointer                  $.bufptr;                                 #= ot:(char*)                                            - Output buffer index pointer.
  has Pointer                  $.bufmax;                                 #= ot:(char*)                                            - Output buffer maximum+1 address.
  has unsigned                 $.max_request_size;                       #=                                                       - maximum number 32 bit words in reques
  has XrmHashBucket            $.db;                                     #= ot:XrmHashBucket                                      -
  has Pointer                  $.synchandler;                            #= fp:(XDisplay * --> in);                               -
  has Str                      $.display_name;                           #=                                                       - "host:display" string used on this connec
  has int                      $.default_screen;                         #=                                                       - default screen for operations
  has int                      $.nscreens;                               #=                                                       - number of screens on this serve
  has Pointer                  $.screens;                                #= tb:screens,$!nscreens                                 - pointer to list of screens
  has ulong                    $.motion_buffer;                          #=                                                       - size of motion buffer
  has ulong                    $.flags;                                  #=                                                       - internal connection flags
  has int                      $.min_keycode;                            #=                                                       - minimum defined keycode
  has int                      $.max_keycode;                            #=                                                       - maximum defined keycode
  has KeySym                   $.keysyms;                                #=                                                       - This server's keysyms
  has XModifierKeymap          $.modifiermap;                            #=                                                       - This server's modifier keymap
  has int                      $.keysyms_per_keycode;                    #=                                                       - number of rows
  has CArray[uint8]            $.xdefaults;                              #=                                                       - contents of defaults from server
  has CArray[uint8]            $.scratch_buffer;                         #=                                                       - place to hang scratch buffer
  has ulong                    $.scratch_length;                         #=                                                       - length of scratch buffer
  has int                      $.ext_number;                             #=                                                       - extension number on this display
  has Pointer                  $.ext_procs;                              #= tb:XExten,$!ext_number                                - extensions initialized on this display
  has Pointer                  @.event_vec[128]              is CArray;  #= fp:(Display *, XEvent *, xEvent * --> Boolean)        -
  has Pointer                  @.wire_vec[128]               is CArray;  #= fp:(Display *, XEvent *, xEvent * --> Status)         -
  has KeySym                   $.lock_meaning;                           #=                                                       - for XLookupString
  has XLockInfo                $.lock;                                   #=                                                       - multi-thread state, display lock
  has XInternalAsync           $.async_handlers;                         #=                                                       - for internal async
  has ulong                    $.bigreq_size;                            #=                                                       - max size of big requests
  has XLockPtrs                $.lock_fns;                               #=                                                       - pointers to threads functions
  has Pointer                  $.idlist_alloc;                           #= fp:(Disply *, XID *, int --> Pointer);

  has XKeytrans                $.key_bindings;                           #=                                                       - for XLookupString
  has FontRec                  $.cursor_font;                            #=                                                       - for XCreateFontX11Cursor
  has XDisplayAtoms            $.atoms;                                  #=                                                       - for XInternAtom
  has uint                     $.mode_switch;                            #=                                                       - keyboard group modifiers
  has uint                     $.num_lock;                               #=                                                       - keyboard numlock modifiers
  has XContextDB               $.context_db;                             #=                                                       - context database
  has Pointer[Pointer]         $.error_vec;                              #= fp:(Display *, XErrorEvent *, xError * --> Boolean);

  # Xcms information
  has XcmsInfo                 $.cms;
  has XIMFilter                $.im_filters;
  has XSQEvent                 $.qfree;                                  #=                                                       - unallocated event queue elements
  has ulong                    $.next_event_serial_num;                  #=                                                       - inserted into next queue elt
  has XExten                   $.flushes;                                #=                                                       - Flush hooks
  has Pointer                  $.im_fd_info;                             #= tb:XConnectionInfo,$!im_fd_length                     - _XRegisterInternalConnection
  has int                      $.im_fd_length;                           #=                                                       - number of im_fd_info
  has Pointer                  $.conn_watchers;                          #= tb:XConnWatchInfo,$!watcher_count                     - XAddConnectionWa
  has int                      $.watcher_count;                          #=                                                       - number of conn_watchers
  has XPointer                 $.filedes;                                #=                                                       - struct pollfd cache for _XWaitForReadable
  has Pointer                  $.savedsynchandle;                        #= fp:(Display * --> int);
  has XID                      $.resource_max;                           #=                                                       - allocator max ID
  has int                      $.xcmisc_opcode;                          #=                                                       - major opcode for XC-MISC
  has XkbInfoRec               $.xkb_info;                               #=                                                       - XKB info
  has XtransConnInfo           $.trans_conn;                             #=                                                       - transport connection object
  has X11XCBPrivate            $.xcb;                                    #=                                                       - XCB glue private data

  # Generic event cookie handling
  has uint                     $.next_cookie;                            #=                                                       - next event cookie

  # vector for wire to generic event, index is (extension - 128)
  HAS Pointer                  @.generic_event_vec[128]      is CArray;  #= fp:(Display *, XGenericEventCookie *, xEvent * --> Bool);

  # vector for event copy, index is (extension - 128)
  has Pointer                  @.generic_event_copy_vec[128] is CArray;  #= fp:(Display *, XGenericEventCookie ,XGenericEventCookie * --> Bool);
  has Pointer                  $.cookiejar;                              #= cookie events returned but not claimed */
  has XErrorThreadInfo         $.error_threads;
  has Pointer                  $.exit_handler;                           #= fp:XIOErrorExitHandler
  has Pointer                  $.exit_handler_data;
}

class XtAppStruct is repr<CStruct> is export {
	has XtAppContext                 $!next              ;
	has ProcessContext               $!process           ;
	has InternalCallbackList         $!destroy_callbacks ;
	has CArray[Pointer[Display]]     $!list              ;
	has TimerEvent                   $!timerQueue        ;
	has WorkProc                     $!workQueue         ;
	has CArray[Pointer[InputEvent]]  $!input_list        ;
	has InputEvent                   $!outstandingQueue  ;
	has SignalEvent                  $!signalQueue       ;
	has XrmDatabase                  $!errorDB           ;

  # cw: Will &!handler ever be a thing?
	has Pointer                      $!errorMsgHandler   ; #= fp:XtErrorMsgHandler
	has Pointer                      $!warningMsgHandler ; #= fp:XtErrorMsgHandler
	has Pointer                      $!errorHandler      ; #= fp:XtErrorHandler
	has Pointer                      $!warningHandler    ; #= fp:XtErrorHandler
	has ActionList                   $!action_table      ;
	has ConverterTable               $!converterTable    ;
	has ulong                        $!selectionTimeout  ;
	HAS FdStruct                     $!fds               ;
	has short                        $!count             ;
	has short                        $!max               ;
	has short                        $!last              ;
	has short                        $!input_count       ;
	has short                        $!input_max         ;
	has Boolean                      $!sync              ;
	has Boolean                      $!being_destroyed   ;
	has Boolean                      $!error_inited      ;
	has Boolean                      $!identify_windows  ;
	has Heap                         $!heap              ;
	has String                       $!fallback_resources;
	has ActionHook                   $!action_hook_list  ;
	has BlockHook                    $!block_hook_list   ;
	has realInt                      $!destroy_list_size ;
	has realInt                      $!destroy_count     ;
	has realInt                      $!dispatch_level    ;
	has DestroyRec                   $!destroy_list      ;
	has Widget                       $!in_phase2_destroy ;
	has LangProc                     $!langProcRec       ;
	has TMBindCacheRec               $!free_bindings     ;
	has XtString                     $!display_name_tried;
	has Display                      $!dpy_destroy_list  ;
	has realInt                      $!dpy_destroy_count ;
	has Boolean                      $!exit_flag         ;
	has Boolean                      $!rebuild_fdlist    ;
	has LockPtr                      $!lock_info         ;
	has Pointer                      $!lock              ; #= fp:ThreadAppProc
	has Pointer                      $!unlock            ; #= fp:ThreadAppProc
	has Pointer                      $!yield_lock        ; #= fp:ThreadAppYieldLockProc
	has Pointer                      $!restore_lock      ; #= fp:ThreadAppRestoreLockProc
	has Pointer                      $!free_lock         ; #= fp:ThreadAppProc
}
