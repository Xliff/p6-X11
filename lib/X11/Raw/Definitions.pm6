use v6.c;

use NativeCall;

unit package XLib::Raw::Definitions;

our $DEBUG is export;

constant uchar                        is export := uint8;
constant char                         is export := int8;
constant float                        is export := num32;
constant double                       is export := num64;
constant short                        is export := int16;
constant ushort                       is export := uint16;
constant wchar_t                      is export := uint16;
constant unsigned                     is export := uint;

constant Boolean                      is export := uint8;
constant Cardinal                     is export := uint;
constant Dimension                    is export := uint16;
constant DrawDirection                is export := int;
constant EventMask                    is export := uint64;
constant Pixel                        is export := uint64;
constant Position                     is export :=  int16;
constant Modifiers                    is export := uint;
constant String                       is export := Str;
constant XIC                          is export := Pointer;
constant XID                          is export := uint64;
constant XawTextPosition              is export := long;
constant XFontSet                     is export := Pointer;  # os:XOC
constant XPointer                     is export := Str;
constant XrmQuark                     is export :=  int;
constant XrmClass                     is export := XrmQuark;
constant XrmName                      is export := XrmQuark;
constant XtEnum                       is export := uint8;
constant XtInputMask                  is export := uint64;
constant XtVersionType                is export := uint64;
constant XtIntervalId                 is export := ulong;

constant GContext                     is export := XID;

constant CARD8                        is export := uint8;
constant CARD16                       is export := uint16;
constant CARD32                       is export := uint32;
constant CARD64                       is export := uint64;

constant fsBitmapFormat               is export := CARD32;
constant fsBitmapFormatMask           is export := CARD32;

constant TMShortCard                  is export := uint16;

constant INT8                         is export := int8;
constant INT16                        is export := int16;
constant INT32                        is export := int32;

constant BITS16                       is export := CARD16;
constant BITS32                       is export := CARD32;

constant BOOL                         is export :=  CARD8;
constant BYTE                         is export :=  CARD8;

constant Atom                         is export := CARD32;
constant Colormap                     is export := CARD32;
constant Cursor                       is export := CARD32;
constant Drawable                     is export := CARD32;
constant Font                         is export := CARD32;
constant KeyCode                      is export := CARD8;
constant KeySym                       is export := CARD32;
constant Pixmap                       is export := CARD32;
constant Region                       is export := CARD32;
constant ShmSeg                       is export := CARD32;
constant Time                         is export := CARD32;
constant VisualID                     is export := CARD32;
constant Window                       is export := CARD32;
constant XSyncAlarm                   is export := CARD32;
constant XSyncCounter                 is export := CARD32;

constant x11                          is export = 'x11',v6;

constant TMKEYCACHELOG2               is export = 6;
constant TMKEYCACHESIZE               is export = 1 +< TMKEYCACHELOG2;

constant X_PROTOCOL                   is export = 11;
constant X_PROTOCOL_REVISION          is export = 0;

constant None                         is export = 0;
constant ParentRelative               is export = 1;
constant CopyFromParent               is export = 0;
constant PointerWindow                is export = 0;
constant InputFocus                   is export = 1;
constant PointerRoot                  is export = 1;
constant AnyPropertyType              is export = 0;
constant AnyKey                       is export = 0;
constant AnyButton                    is export = 0;
constant AllTemporary                 is export = 0;
constant CurrentTime                  is export = 0;
constant NoSymbol                     is export = 0;
constant NoEventMask                  is export = 0;

constant KeyPressMask                 is export = (1 +< 0);
constant KeyReleaseMask               is export = (1 +< 1);
constant ButtonPressMask              is export = (1 +< 2);
constant ButtonReleaseMask            is export = (1 +< 3);
constant EnterWindowMask              is export = (1 +< 4);
constant LeaveWindowMask              is export = (1 +< 5);
constant PointerMotionMask            is export = (1 +< 6);
constant PointerMotionHintMask        is export = (1 +< 7);
constant Button1MotionMask            is export = (1 +< 8);
constant Button2MotionMask            is export = (1 +< 9);
constant Button3MotionMask            is export = (1 +< 10);
constant Button4MotionMask            is export = (1 +< 11);
constant Button5MotionMask            is export = (1 +< 12);
constant ButtonMotionMask             is export = (1 +< 13);
constant KeymapStateMask              is export = (1 +< 14);
constant ExposureMask                 is export = (1 +< 15);
constant VisibilityChangeMask         is export = (1 +< 16);
constant StructureNotifyMask          is export = (1 +< 17);
constant ResizeRedirectMask           is export = (1 +< 18);
constant SubstructureNotifyMask       is export = (1 +< 19);
constant SubstructureRedirectMask     is export = (1 +< 20);
constant FocusChangeMask              is export = (1 +< 21);
constant PropertyChangeMask           is export = (1 +< 22);
constant ColormapChangeMask           is export = (1 +< 23);
constant OwnerGrabButtonMask          is export = (1 +< 24);

constant KeyPress                     is export = 2;
constant KeyRelease                   is export = 3;
constant ButtonPress                  is export = 4;
constant ButtonRelease                is export = 5;
constant MotionNotify                 is export = 6;
constant EnterNotify                  is export = 7;
constant LeaveNotify                  is export = 8;
constant FocusIn                      is export = 9;
constant FocusOut                     is export = 10;
constant KeymapNotify                 is export = 11;
constant Expose                       is export = 12;
constant GraphicsExpose               is export = 13;
constant NoExpose                     is export = 14;
constant VisibilityNotify             is export = 15;
constant CreateNotify                 is export = 16;
constant DestroyNotify                is export = 17;
constant UnmapNotify                  is export = 18;
constant MapNotify                    is export = 19;
constant MapRequest                   is export = 20;
constant ReparentNotify               is export = 21;
constant ConfigureNotify              is export = 22;
constant ConfigureRequest             is export = 23;
constant GravityNotify                is export = 24;
constant ResizeRequest                is export = 25;
constant CirculateNotify              is export = 26;
constant CirculateRequest             is export = 27;
constant PropertyNotify               is export = 28;
constant SelectionClear               is export = 29;
constant SelectionRequest             is export = 30;
constant SelectionNotify              is export = 31;
constant ColormapNotify               is export = 32;
constant ClientMessage                is export = 33;
constant MappingNotify                is export = 34;
constant GenericEvent                 is export = 35;
constant LASTEvent                    is export = 36;

constant ShiftMask                    is export = (1 +< 0);
constant LockMask                     is export = (1 +< 1);
constant ControlMask                  is export = (1 +< 2);
constant Mod1Mask                     is export = (1 +< 3);
constant Mod2Mask                     is export = (1 +< 4);
constant Mod3Mask                     is export = (1 +< 5);
constant Mod4Mask                     is export = (1 +< 6);
constant Mod5Mask                     is export = (1 +< 7);

constant ShiftMapIndex                is export = 0;
constant LockMapIndex                 is export = 1;
constant ControlMapIndex              is export = 2;
constant Mod1MapIndex                 is export = 3;
constant Mod2MapIndex                 is export = 4;
constant Mod3MapIndex                 is export = 5;
constant Mod4MapIndex                 is export = 6;
constant Mod5MapIndex                 is export = 7;

constant Button1Mask                  is export = (1 +< 8);
constant Button2Mask                  is export = (1 +< 9);
constant Button3Mask                  is export = (1 +< 10);
constant Button4Mask                  is export = (1 +< 11);
constant Button5Mask                  is export = (1 +< 12);
constant AnyModifier                  is export = (1 +< 15);

constant Button1                      is export = 1;
constant Button2                      is export = 2;
constant Button3                      is export = 3;
constant Button4                      is export = 4;
constant Button5                      is export = 5;

constant NotifyNormal                 is export = 0;
constant NotifyGrab                   is export = 1;
constant NotifyUngrab                 is export = 2;
constant NotifyWhileGrabbed           is export = 3;
constant NotifyHint                   is export = 1;
constant NotifyAncestor               is export = 0;
constant NotifyVirtual                is export = 1;
constant NotifyInferior               is export = 2;
constant NotifyNonlinear              is export = 3;
constant NotifyNonlinearVirtual       is export = 4;
constant NotifyPointer                is export = 5;
constant NotifyPointerRoot            is export = 6;
constant NotifyDetailNone             is export = 7;

constant VisibilityUnobscured         is export = 0;
constant VisibilityPartiallyObscured  is export = 1;
constant VisibilityFullyObscured      is export = 2;

constant PlaceOnTop                   is export = 0;
constant PlaceOnBottom                is export = 1;

constant FamilyInternet               is export = 0;
constant FamilyDECnet                 is export = 1;
constant FamilyChaos                  is export = 2;
constant FamilyInternet6              is export = 6;
constant FamilyServerInterpreted      is export = 5;

constant PropertyNewValue             is export = 0;
constant PropertyDelete               is export = 1;

constant ColormapUninstalled          is export = 0;
constant ColormapInstalled            is export = 1;

constant GrabModeSync                 is export = 0;
constant GrabModeAsync                is export = 1;

constant GrabSuccess                  is export = 0;
constant AlreadyGrabbed               is export = 1;
constant GrabInvalidTime              is export = 2;
constant GrabNotViewable              is export = 3;
constant GrabFrozen                   is export = 4;

constant AsyncPointer                 is export = 0;
constant SyncPointer                  is export = 1;
constant ReplayPointer                is export = 2;
constant AsyncKeyboard                is export = 3;
constant SyncKeyboard                 is export = 4;
constant ReplayKeyboard               is export = 5;
constant AsyncBoth                    is export = 6;
constant SyncBoth                     is export = 7;

constant RevertToNone                 is export = None;
constant RevertToPointerRoot          is export = PointerRoot;
constant RevertToParent               is export = 2;

constant Success                      is export = 0;
constant BadRequest                   is export = 1;
constant BadValue                     is export = 2;
constant BadWindow                    is export = 3;
constant BadPixmap                    is export = 4;
constant BadAtom                      is export = 5;
constant BadCursor                    is export = 6;
constant BadFont                      is export = 7;
constant BadMatch                     is export = 8;
constant BadDrawable                  is export = 9;
constant BadAccess                    is export = 10;
constant BadAlloc                     is export = 11;
constant BadColor                     is export = 12;
constant BadGC                        is export = 13;
constant BadIDChoice                  is export = 14;
constant BadName                      is export = 15;
constant BadLength                    is export = 16;
constant BadImplementation            is export = 17;
constant FirstExtensionError          is export = 128;
constant LastExtensionError           is export = 255;

constant InputOutput                  is export = 1;
constant InputOnly                    is export = 2;

constant CWBackPixmap                 is export = (1 +< 0);
constant CWBackPixel                  is export = (1 +< 1);
constant CWBorderPixmap               is export = (1 +< 2);
constant CWBorderPixel                is export = (1 +< 3);
constant CWBitGravity                 is export = (1 +< 4);
constant CWWinGravity                 is export = (1 +< 5);
constant CWBackingStore               is export = (1 +< 6);
constant CWBackingPlanes              is export = (1 +< 7);
constant CWBackingPixel               is export = (1 +< 8);
constant CWOverrideRedirect           is export = (1 +< 9);
constant CWSaveUnder                  is export = (1 +< 10);
constant CWEventMask                  is export = (1 +< 11);
constant CWDontPropagate              is export = (1 +< 12);
constant CWColormap                   is export = (1 +< 13);
constant CWCursor                     is export = (1 +< 14);

constant CWX                          is export = (1 +< 0);
constant CWY                          is export = (1 +< 1);
constant CWWidth                      is export = (1 +< 2);
constant CWHeight                     is export = (1 +< 3);
constant CWBorderWidth                is export = (1 +< 4);
constant CWSibling                    is export = (1 +< 5);
constant CWStackMode                  is export = (1 +< 6);

constant ForgetGravity                is export = 0;
constant NorthWestGravity             is export = 1;
constant NorthGravity                 is export = 2;
constant NorthEastGravity             is export = 3;
constant WestGravity                  is export = 4;
constant CenterGravity                is export = 5;
constant EastGravity                  is export = 6;
constant SouthWestGravity             is export = 7;
constant SouthGravity                 is export = 8;
constant SouthEastGravity             is export = 9;
constant StaticGravity                is export = 10;

constant UnmapGravity                 is export = 0;

constant NotUseful                    is export = 0;
constant WhenMapped                   is export = 1;
constant Always                       is export = 2;

constant IsUnmapped                   is export = 0;
constant IsUnviewable                 is export = 1;
constant IsViewable                   is export = 2;

constant SetModeInsert                is export = 0;
constant SetModeDelete                is export = 1;

constant DestroyAll                   is export = 0;
constant RetainPermanent              is export = 1;
constant RetainTemporary              is export = 2;

constant Above                        is export = 0;
constant Below                        is export = 1;
constant TopIf                        is export = 2;
constant BottomIf                     is export = 3;
constant Opposite                     is export = 4;

constant RaiseLowest                  is export = 0;
constant LowerHighest                 is export = 1;

constant PropModeReplace              is export = 0;
constant PropModePrepend              is export = 1;
constant PropModeAppend               is export = 2;

constant GXclear                      is export = 0x0;
constant GXand                        is export = 0x1;
constant GXandReverse                 is export = 0x2;
constant GXcopy                       is export = 0x3;
constant GXandInverted                is export = 0x4;
constant GXnoop                       is export = 0x5;
constant GXxor                        is export = 0x6;
constant GXor                         is export = 0x7;
constant GXnor                        is export = 0x8;
constant GXequiv                      is export = 0x9;
constant GXinvert                     is export = 0xa;
constant GXorReverse                  is export = 0xb;
constant GXcopyInverted               is export = 0xc;
constant GXorInverted                 is export = 0xd;
constant GXnand                       is export = 0xe;
constant GXset                        is export = 0xf;

constant LineSolid                    is export = 0;
constant LineOnOffDash                is export = 1;
constant LineDoubleDash               is export = 2;

constant CapNotLast                   is export = 0;
constant CapButt                      is export = 1;
constant CapRound                     is export = 2;
constant CapProjecting                is export = 3;

constant JoinMiter                    is export = 0;
constant JoinRound                    is export = 1;
constant JoinBevel                    is export = 2;

constant FillSolid                    is export = 0;
constant FillTiled                    is export = 1;
constant FillStippled                 is export = 2;
constant FillOpaqueStippled           is export = 3;

constant EvenOddRule                  is export = 0;
constant WindingRule                  is export = 1;

constant ClipByChildren               is export = 0;
constant IncludeInferiors             is export = 1;

constant Unsorted                     is export = 0;
constant YSorted                      is export = 1;
constant YXSorted                     is export = 2;
constant YXBanded                     is export = 3;

constant CoordModeOrigin              is export = 0;
constant CoordModePrevious            is export = 1;

constant Complex                      is export = 0;
constant Nonconvex                    is export = 1;
constant Convex                       is export = 2;

constant ArcChord                     is export = 0;
constant ArcPieSlice                  is export = 1;

constant GCFunction                   is export = (1 +< 0);
constant GCPlaneMask                  is export = (1 +< 1);
constant GCForeground                 is export = (1 +< 2);
constant GCBackground                 is export = (1 +< 3);
constant GCLineWidth                  is export = (1 +< 4);
constant GCLineStyle                  is export = (1 +< 5);
constant GCCapStyle                   is export = (1 +< 6);
constant GCJoinStyle                  is export = (1 +< 7);
constant GCFillStyle                  is export = (1 +< 8);
constant GCFillRule                   is export = (1 +< 9);
constant GCTile                       is export = (1 +< 10);
constant GCStipple                    is export = (1 +< 11);
constant GCTileStipXOrigin            is export = (1 +< 12);
constant GCTileStipYOrigin            is export = (1 +< 13);
constant GCFont                       is export = (1 +< 14);
constant GCSubwindowMode              is export = (1 +< 15);
constant GCGraphicsExposures          is export = (1 +< 16);
constant GCClipXOrigin                is export = (1 +< 17);
constant GCClipYOrigin                is export = (1 +< 18);
constant GCClipMask                   is export = (1 +< 19);
constant GCDashOffset                 is export = (1 +< 20);
constant GCDashList                   is export = (1 +< 21);
constant GCArcMode                    is export = (1 +< 22);
constant GCLastBit                    is export = 22;

constant FontLeftToRight              is export = 0;
constant FontRightToLeft              is export = 1;
constant FontChange                   is export = 255;

constant XYBitmap                     is export = 0;
constant XYPixmap                     is export = 1;
constant ZPixmap                      is export = 2;

constant AllocNone                    is export = 0;
constant AllocAll                     is export = 1;

constant DoRed                        is export = (1 +< 0);
constant DoGreen                      is export = (1 +< 1);
constant DoBlue                       is export = (1 +< 2);

constant CursorShape                  is export = 0;
constant TileShape                    is export = 1;
constant StippleShape                 is export = 2;

constant AutoRepeatModeOff            is export = 0;
constant AutoRepeatModeOn             is export = 1;
constant AutoRepeatModeDefault        is export = 2;

constant LedModeOff                   is export = 0;
constant LedModeOn                    is export = 1;

constant KBKeyClickPercent            is export = (1 +< 0);
constant KBBellPercent                is export = (1 +< 1);
constant KBBellPitch                  is export = (1 +< 2);
constant KBBellDuration               is export = (1 +< 3);
constant KBLed                        is export = (1 +< 4);
constant KBLedMode                    is export = (1 +< 5);
constant KBKey                        is export = (1 +< 6);
constant KBAutoRepeatMode             is export = (1 +< 7);

constant MappingSuccess               is export = 0;
constant MappingBusy                  is export = 1;
constant MappingFailed                is export = 2;

constant MappingModifier              is export = 0;
constant MappingKeyboard              is export = 1;
constant MappingPointer               is export = 2;

constant DontPreferBlanking           is export = 0;
constant PreferBlanking               is export = 1;
constant DefaultBlanking              is export = 2;

constant DisableScreenSaver           is export = 0;

constant DisableScreenInterval        is export = 0;

constant DontAllowExposures           is export = 0;
constant AllowExposures               is export = 1;
constant DefaultExposures             is export = 2;

constant ScreenSaverReset             is export = 0;
constant ScreenSaverActive            is export = 1;

constant HostInsert                   is export = 0;
constant HostDelete                   is export = 1;

constant EnableAccess                 is export = 1;
constant DisableAccess                is export = 0;

constant StaticGray                   is export = 0;
constant GrayScale                    is export = 1;
constant StaticColor                  is export = 2;
constant PseudoColor                  is export = 3;
constant TrueColor                    is export = 4;
constant DirectColor                  is export = 5;

constant LSBFirst                     is export = 0;
constant MSBFirst                     is export = 1;

constant sz_xSegment                      is export = 8;
constant sz_xPoint                        is export = 4;
constant sz_xRectangle                    is export = 8;
constant sz_xArc                          is export = 12;
constant sz_xConnClientPrefix             is export = 12;
constant sz_xConnSetupPrefix              is export = 8;
constant sz_xConnSetup                    is export = 32;
constant sz_xPixmapFormat                 is export = 8;
constant sz_xDepth                        is export = 8;
constant sz_xVisualType                   is export = 24;
constant sz_xWindowRoot                   is export = 40;
constant sz_xTimecoord                    is export = 8;
constant sz_xHostEntry                    is export = 4;
constant sz_xCharInfo                     is export = 12;
constant sz_xFontProp                     is export = 8;
constant sz_xTextElt                      is export = 2;
constant sz_xColorItem                    is export = 12;
constant sz_xrgb                          is export = 8;
constant sz_xGenericReply                 is export = 32;
constant sz_xGetWindowAttributesReply     is export = 44;
constant sz_xGetGeometryReply             is export = 32;
constant sz_xQueryTreeReply               is export = 32;
constant sz_xInternAtomReply              is export = 32;
constant sz_xGetAtomNameReply             is export = 32;
constant sz_xGetPropertyReply             is export = 32;
constant sz_xListPropertiesReply          is export = 32;
constant sz_xGetSelectionOwnerReply       is export = 32;
constant sz_xGrabPointerReply             is export = 32;
constant sz_xQueryPointerReply            is export = 32;
constant sz_xGetMotionEventsReply         is export = 32;
constant sz_xTranslateCoordsReply         is export = 32;
constant sz_xGetInputFocusReply           is export = 32;
constant sz_xQueryKeymapReply             is export = 40;
constant sz_xQueryFontReply               is export = 60;
constant sz_xQueryTextExtentsReply        is export = 32;
constant sz_xListFontsReply               is export = 32;
constant sz_xGetFontPathReply             is export = 32;
constant sz_xGetImageReply                is export = 32;
constant sz_xListInstalledColormapsReply  is export = 32;
constant sz_xAllocColorReply              is export = 32;
constant sz_xAllocNamedColorReply         is export = 32;
constant sz_xAllocColorCellsReply         is export = 32;
constant sz_xAllocColorPlanesReply        is export = 32;
constant sz_xQueryColorsReply             is export = 32;
constant sz_xLookupColorReply             is export = 32;
constant sz_xQueryBestSizeReply           is export = 32;
constant sz_xQueryExtensionReply          is export = 32;
constant sz_xListExtensionsReply          is export = 32;
constant sz_xSetMappingReply              is export = 32;
constant sz_xGetKeyboardControlReply      is export = 52;
constant sz_xGetPointerControlReply       is export = 32;
constant sz_xGetScreenSaverReply          is export = 32;
constant sz_xListHostsReply               is export = 32;
constant sz_xSetModifierMappingReply      is export = 32;
constant sz_xError                        is export = 32;
constant sz_xEvent                        is export = 32;
constant sz_xKeymapEvent                  is export = 32;
constant sz_xReq                          is export = 4;
constant sz_xResourceReq                  is export = 8;
constant sz_xCreateWindowReq              is export = 32;
constant sz_xChangeWindowAttributesReq    is export = 12;
constant sz_xChangeSaveSetReq             is export = 8;
constant sz_xReparentWindowReq            is export = 16;
constant sz_xConfigureWindowReq           is export = 12;
constant sz_xCirculateWindowReq           is export = 8;
constant sz_xInternAtomReq                is export = 8;
constant sz_xChangePropertyReq            is export = 24;
constant sz_xDeletePropertyReq            is export = 12;
constant sz_xGetPropertyReq               is export = 24;
constant sz_xSetSelectionOwnerReq         is export = 16;
constant sz_xConvertSelectionReq          is export = 24;
constant sz_xSendEventReq                 is export = 44;
constant sz_xGrabPointerReq               is export = 24;
constant sz_xGrabButtonReq                is export = 24;
constant sz_xUngrabButtonReq              is export = 12;
constant sz_xChangeActivePointerGrabReq   is export = 16;
constant sz_xGrabKeyboardReq              is export = 16;
constant sz_xGrabKeyReq                   is export = 16;
constant sz_xUngrabKeyReq                 is export = 12;
constant sz_xAllowEventsReq               is export = 8;
constant sz_xGetMotionEventsReq           is export = 16;
constant sz_xTranslateCoordsReq           is export = 16;
constant sz_xWarpPointerReq               is export = 24;
constant sz_xSetInputFocusReq             is export = 12;
constant sz_xOpenFontReq                  is export = 12;
constant sz_xQueryTextExtentsReq          is export = 8;
constant sz_xListFontsReq                 is export = 8;
constant sz_xSetFontPathReq               is export = 8;
constant sz_xCreatePixmapReq              is export = 16;
constant sz_xCreateGCReq                  is export = 16;
constant sz_xChangeGCReq                  is export = 12;
constant sz_xCopyGCReq                    is export = 16;
constant sz_xSetDashesReq                 is export = 12;
constant sz_xSetClipRectanglesReq         is export = 12;
constant sz_xCopyAreaReq                  is export = 28;
constant sz_xCopyPlaneReq                 is export = 32;
constant sz_xPolyPointReq                 is export = 12;
constant sz_xPolySegmentReq               is export = 12;
constant sz_xFillPolyReq                  is export = 16;
constant sz_xPutImageReq                  is export = 24;
constant sz_xGetImageReq                  is export = 20;
constant sz_xPolyTextReq                  is export = 16;
constant sz_xImageTextReq                 is export = 16;
constant sz_xCreateColormapReq            is export = 16;
constant sz_xCopyColormapAndFreeReq       is export = 12;
constant sz_xAllocColorReq                is export = 16;
constant sz_xAllocNamedColorReq           is export = 12;
constant sz_xAllocColorCellsReq           is export = 12;
constant sz_xAllocColorPlanesReq          is export = 16;
constant sz_xFreeColorsReq                is export = 12;
constant sz_xStoreColorsReq               is export = 8;
constant sz_xStoreNamedColorReq           is export = 16;
constant sz_xQueryColorsReq               is export = 8;
constant sz_xLookupColorReq               is export = 12;
constant sz_xCreateCursorReq              is export = 32;
constant sz_xCreateGlyphCursorReq         is export = 32;
constant sz_xRecolorCursorReq             is export = 20;
constant sz_xQueryBestSizeReq             is export = 12;
constant sz_xQueryExtensionReq            is export = 8;
constant sz_xChangeKeyboardControlReq     is export = 8;
constant sz_xBellReq                      is export = 4;
constant sz_xChangePointerControlReq      is export = 12;
constant sz_xSetScreenSaverReq            is export = 12;
constant sz_xChangeHostsReq               is export = 8;
constant sz_xListHostsReq                 is export = 4;
constant sz_xChangeModeReq                is export = 4;
constant sz_xRotatePropertiesReq          is export = 12;
constant sz_xReply                        is export = 32;
constant sz_xGrabKeyboardReply            is export = 32;
constant sz_xListFontsWithInfoReply       is export = 60;
constant sz_xSetPointerMappingReply       is export = 32;
constant sz_xGetKeyboardMappingReply      is export = 32;
constant sz_xGetPointerMappingReply       is export = 32;
constant sz_xGetModifierMappingReply      is export = 32;
constant sz_xListFontsWithInfoReq         is export = 8;
constant sz_xPolyLineReq                  is export = 12;
constant sz_xPolyArcReq                   is export = 12;
constant sz_xPolyRectangleReq             is export = 12;
constant sz_xPolyFillRectangleReq         is export = 12;
constant sz_xPolyFillArcReq               is export = 12;
constant sz_xPolyText8Req                 is export = 16;
constant sz_xPolyText16Req                is export = 16;
constant sz_xImageText8Req                is export = 16;
constant sz_xImageText16Req               is export = 16;
constant sz_xSetPointerMappingReq         is export = 4;
constant sz_xForceScreenSaverReq          is export = 4;
constant sz_xSetCloseDownModeReq          is export = 4;
constant sz_xClearAreaReq                 is export = 16;
constant sz_xSetAccessControlReq          is export = 4;
constant sz_xGetKeyboardMappingReq        is export = 8;
constant sz_xSetModifierMappingReq        is export = 4;
constant sz_xPropIconSize                 is export = 24;
constant sz_xChangeKeyboardMappingReq     is export = 8;

constant X_TCP_PORT                       is export = 6000;

constant xTrue                            is export = 1;
constant xFalse                           is export = 0;

constant ELFlagFocus                      is export = (1 +< 0);
constant ELFlagSameScreen                 is export = (1 +< 1);

constant X_Reply                          is export = 1;
constant X_Error                          is export = 0;
constant X_CreateWindow                   is export = 1;
constant X_ChangeWindowAttributes         is export = 2;
constant X_GetWindowAttributes            is export = 3;
constant X_DestroyWindow                  is export = 4;
constant X_DestroySubwindows              is export = 5;
constant X_ChangeSaveSet                  is export = 6;
constant X_ReparentWindow                 is export = 7;
constant X_MapWindow                      is export = 8;
constant X_MapSubwindows                  is export = 9;
constant X_UnmapWindow                    is export = 10;
constant X_UnmapSubwindows                is export = 11;
constant X_ConfigureWindow                is export = 12;
constant X_CirculateWindow                is export = 13;
constant X_GetGeometry                    is export = 14;
constant X_QueryTree                      is export = 15;
constant X_InternAtom                     is export = 16;
constant X_GetAtomName                    is export = 17;
constant X_ChangeProperty                 is export = 18;
constant X_DeleteProperty                 is export = 19;
constant X_GetProperty                    is export = 20;
constant X_ListProperties                 is export = 21;
constant X_SetSelectionOwner              is export = 22;
constant X_GetSelectionOwner              is export = 23;
constant X_ConvertSelection               is export = 24;
constant X_SendEvent                      is export = 25;
constant X_GrabPointer                    is export = 26;
constant X_UngrabPointer                  is export = 27;
constant X_GrabButton                     is export = 28;
constant X_UngrabButton                   is export = 29;
constant X_ChangeActivePointerGrab        is export = 30;
constant X_GrabKeyboard                   is export = 31;
constant X_UngrabKeyboard                 is export = 32;
constant X_GrabKey                        is export = 33;
constant X_UngrabKey                      is export = 34;
constant X_AllowEvents                    is export = 35;
constant X_GrabServer                     is export = 36;
constant X_UngrabServer                   is export = 37;
constant X_QueryPointer                   is export = 38;
constant X_GetMotionEvents                is export = 39;
constant X_TranslateCoords                is export = 40;
constant X_WarpPointer                    is export = 41;
constant X_SetInputFocus                  is export = 42;
constant X_GetInputFocus                  is export = 43;
constant X_QueryKeymap                    is export = 44;
constant X_OpenFont                       is export = 45;
constant X_CloseFont                      is export = 46;
constant X_QueryFont                      is export = 47;
constant X_QueryTextExtents               is export = 48;
constant X_ListFonts                      is export = 49;
constant X_ListFontsWithInfo              is export = 50;
constant X_SetFontPath                    is export = 51;
constant X_GetFontPath                    is export = 52;
constant X_CreatePixmap                   is export = 53;
constant X_FreePixmap                     is export = 54;
constant X_CreateGC                       is export = 55;
constant X_ChangeGC                       is export = 56;
constant X_CopyGC                         is export = 57;
constant X_SetDashes                      is export = 58;
constant X_SetClipRectangles              is export = 59;
constant X_FreeGC                         is export = 60;
constant X_ClearArea                      is export = 61;
constant X_CopyArea                       is export = 62;
constant X_CopyPlane                      is export = 63;
constant X_PolyPoint                      is export = 64;
constant X_PolyLine                       is export = 65;
constant X_PolySegment                    is export = 66;
constant X_PolyRectangle                  is export = 67;
constant X_PolyArc                        is export = 68;
constant X_FillPoly                       is export = 69;
constant X_PolyFillRectangle              is export = 70;
constant X_PolyFillArc                    is export = 71;
constant X_PutImage                       is export = 72;
constant X_GetImage                       is export = 73;
constant X_PolyText8                      is export = 74;
constant X_PolyText16                     is export = 75;
constant X_ImageText8                     is export = 76;
constant X_ImageText16                    is export = 77;
constant X_CreateColormap                 is export = 78;
constant X_FreeColormap                   is export = 79;
constant X_CopyColormapAndFree            is export = 80;
constant X_InstallColormap                is export = 81;
constant X_UninstallColormap              is export = 82;
constant X_ListInstalledColormaps         is export = 83;
constant X_AllocColor                     is export = 84;
constant X_AllocNamedColor                is export = 85;
constant X_AllocColorCells                is export = 86;
constant X_AllocColorPlanes               is export = 87;
constant X_FreeColors                     is export = 88;
constant X_StoreColors                    is export = 89;
constant X_StoreNamedColor                is export = 90;
constant X_QueryColors                    is export = 91;
constant X_LookupColor                    is export = 92;
constant X_CreateCursor                   is export = 93;
constant X_CreateGlyphCursor              is export = 94;
constant X_FreeCursor                     is export = 95;
constant X_RecolorCursor                  is export = 96;
constant X_QueryBestSize                  is export = 97;
constant X_QueryExtension                 is export = 98;
constant X_ListExtensions                 is export = 99;
constant X_ChangeKeyboardMapping          is export = 100;
constant X_GetKeyboardMapping             is export = 101;
constant X_ChangeKeyboardControl          is export = 102;
constant X_GetKeyboardControl             is export = 103;
constant X_Bell                           is export = 104;
constant X_ChangePointerControl           is export = 105;
constant X_GetPointerControl              is export = 106;
constant X_SetScreenSaver                 is export = 107;
constant X_GetScreenSaver                 is export = 108;
constant X_ChangeHosts                    is export = 109;
constant X_ListHosts                      is export = 110;
constant X_SetAccessControl               is export = 111;
constant X_SetCloseDownMode               is export = 112;
constant X_KillClient                     is export = 113;
constant X_RotateProperties               is export = 114;
constant X_ForceScreenSaver               is export = 115;
constant X_SetPointerMapping              is export = 116;
constant X_GetPointerMapping              is export = 117;
constant X_SetModifierMapping             is export = 118;
constant X_GetModifierMapping             is export = 119;
constant X_NoOperation                    is export = 127;

constant _XtShellPositionValid            is export = 1 +< 0;
constant _XtShellNotReparented            is export = 1 +< 1;
constant _XtShellPPositionOK              is export = 1 +< 2;
constant _XtShellGeometryParsed           is export = 1 +< 3;

constant IcePointer                       is export := Pointer;
constant SmeObject                        is export := Pointer;
constant TMBindCacheRec                   is export := Pointer;
constant XawDisplayList                   is export := Pointer;

INIT {
  $DEBUG = True if %*ENV<P6_X11_DEBUG>;
}
