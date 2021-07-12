use v6.c;

use NativeCall;

use X11::Raw::Definitions;
use X11::Raw::Enums;

unit package X11::Raw::Structs;

class ATranslationData is repr<CStruct> is export { ... }

class ATranslationData {
	has Str                   $!hasBindings;
	has Str                   $!operation  ;
	has TranslationData       $!xlations   ;
	has ATranslationData      $!next       ;
	has TMComplexBindProcsRec $!bindTbl    ;
}

class ActionHookRec is repr<CStruct> is export {
	has _ActionHookRec   $!next   ;
	has XtAppContext     $!app    ;
	has XtActionHookProc $!proc   ;
	has XtPointer        $!closure;
}

class ActionsRec is repr<CStruct> is export {
	has int       $!idx       ;
	has String    $!params    ;
	has Cardinal  $!num_params;
	has ActionPtr $!next      ;
}

class AppleWMAttachTransient is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!child    ;
	has CARD32 $!parent   ;
}

class AppleWMDisableUpdate is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!screen   ;
}

class AppleWMFrameDraw is repr<CStruct> is export {
	has CARD8  $!reqType     ;
	has CARD8  $!wmReqType   ;
	has CARD16 $!length      ;
	has CARD32 $!screen      ;
	has CARD32 $!window      ;
	has CARD16 $!frame_class ;
	has CARD16 $!frame_attr  ;
	has CARD16 $!ix          ;
	has CARD16 $!iy          ;
	has CARD16 $!iw          ;
	has CARD16 $!ih          ;
	has CARD16 $!ox          ;
	has CARD16 $!oy          ;
	has CARD16 $!ow          ;
	has CARD16 $!oh          ;
	has CARD32 $!title_length;
}

class AppleWMFrameGetRect is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!wmReqType  ;
	has CARD16 $!length     ;
	has CARD16 $!frame_class;
	has CARD16 $!frame_rect ;
	has CARD16 $!ix         ;
	has CARD16 $!iy         ;
	has CARD16 $!iw         ;
	has CARD16 $!ih         ;
	has CARD16 $!ox         ;
	has CARD16 $!oy         ;
	has CARD16 $!ow         ;
	has CARD16 $!oh         ;
}

class AppleWMFrameHitTest is repr<CStruct> is export {
	has CARD8  $!reqType    ;
	has CARD8  $!wmReqType  ;
	has CARD16 $!length     ;
	has CARD16 $!frame_class;
	has CARD16 $!pad1       ;
	has CARD16 $!px         ;
	has CARD16 $!py         ;
	has CARD16 $!ix         ;
	has CARD16 $!iy         ;
	has CARD16 $!iw         ;
	has CARD16 $!ih         ;
	has CARD16 $!ox         ;
	has CARD16 $!oy         ;
	has CARD16 $!ow         ;
	has CARD16 $!oh         ;
}

class AppleWMNotify is repr<CStruct> is export {
	has BYTE   $!type          ;
	has BYTE   $!kind          ;
	has CARD16 $!sequenceNumber;
	has Time   $!time          ;
	has CARD16 $!pad1          ;
	has CARD32 $!arg           ;
	has CARD32 $!pad3          ;
	has CARD32 $!pad4          ;
	has CARD32 $!pad5          ;
	has CARD32 $!pad6          ;
}

class AppleWMQueryVersion is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
}

class AppleWMReenableUpdate is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!screen   ;
}

class AppleWMSelectInput is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!mask     ;
}

class AppleWMSendPSN is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!psn_hi   ;
	has CARD32 $!psn_lo   ;
}

class AppleWMSetCanQuit is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!state    ;
}

class AppleWMSetFrontProcess is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
}

class AppleWMSetWindowLevel is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!window   ;
	has CARD32 $!level    ;
}

class AppleWMSetWindowMenu is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD16 $!nitems   ;
	has CARD16 $!pad1     ;
}

class AppleWMSetWindowMenuCheck is repr<CStruct> is export {
	has CARD8  $!reqType  ;
	has CARD8  $!wmReqType;
	has CARD16 $!length   ;
	has CARD32 $!index    ;
}

class ApplicationShellClassRec is repr<CStruct> is export {
	has CoreClassPart             $!core_class             ;
	has CompositeClassPart        $!composite_class        ;
	has ShellClassPart            $!shell_class            ;
	has WMShellClassPart          $!wm_shell_class         ;
	has VendorShellClassPart      $!vendor_shell_class     ;
	has TopLevelShellClassPart    $!top_level_shell_class  ;
	has ApplicationShellClassPart $!application_shell_class;
}

class AsciiDiskClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class  ;
	has SimpleClassPart    $!simple_class;
	has TextClassPart      $!text_class  ;
	has AsciiClassPart     $!ascii_class ;
	has AsciiDiskClassPart $!disk_class  ;
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

class AsciiSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart    $!object_class    ;
	has TextSinkClassPart  $!text_sink_class ;
	has AsciiSinkClassPart $!ascii_sink_class;
}

class AsciiSinkRec is repr<CStruct> is export {
	has ObjectPart    $!object    ;
	has TextSinkPart  $!text_sink ;
	has AsciiSinkPart $!ascii_sink;
}

class AsciiSrcClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class AsciiSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSrcClassPart  $!text_src_class ;
	has AsciiSrcClassPart $!ascii_src_class;
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

class AsciiSrcRec is repr<CStruct> is export {
	has ObjectPart   $!object   ;
	has TextSrcPart  $!text_src ;
	has AsciiSrcPart $!ascii_src;
}

class AsciiStringClassRec is repr<CStruct> is export {
	has CoreClassPart        $!core_class  ;
	has SimpleClassPart      $!simple_class;
	has TextClassPart        $!text_class  ;
	has AsciiClassPart       $!ascii_class ;
	has AsciiStringClassPart $!string_class;
}

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

class BlockHookRec is repr<CStruct> is export {
	has _BlockHookRec   $!next   ;
	has XtAppContext    $!app    ;
	has XtBlockHookProc $!proc   ;
	has XtPointer       $!closure;
}

class BoxClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has BoxClassPart       $!box_class      ;
}

class BoxRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
	has BoxPart       $!box      ;
}

class CaseConverterRec is repr<CStruct> is export {
	has KeySym           $!start;
	has KeySym           $!stop ;
	has XtCaseProc       $!proc ;
	has CaseConverterPtr $!next ;
}

class CharInfo is repr<CStruct> is export {
	has xCharInfo $!metrics;
	has Str       $!bits   ;
}

class CommandClass is repr<CStruct> is export {
	has XtPointer $!extension;
}

class CommandClassRec is repr<CStruct> is export {
	has CoreClassPart    $!core_class   ;
	has SimpleClassPart  $!simple_class ;
	has LabelClassPart   $!label_class  ;
	has CommandClassPart $!command_class;
}

class CommandRec is repr<CStruct> is export {
	has CorePart    $!core   ;
	has SimplePart  $!simple ;
	has LabelPart   $!label  ;
	has CommandPart $!command;
}

class CompositeClassPart is repr<CStruct> is export {
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

class CompositePart is repr<CStruct> is export {
	has WidgetList  $!children       ;
	has Cardinal    $!num_children   ;
	has Cardinal    $!num_slots      ;
	has XtOrderProc $!insert_position;
}

class CompositeRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
}

class ConstraintClassPart is repr<CStruct> is export {
	has XtResourceList  $!resources      ;
	has Cardinal        $!num_resources  ;
	has Cardinal        $!constraint_size;
	has XtInitProc      $!initialize     ;
	has XtWidgetProc    $!destroy        ;
	has XtSetValuesFunc $!set_values     ;
	has XtPointer       $!extension      ;
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

class CoreClassPart is repr<CStruct> is export {
	has WidgetClass       $!superclass           ;
	has String            $!class_name           ;
	has Cardinal          $!widget_size          ;
	has XtProc            $!class_initialize     ;
	has XtWidgetClassProc $!class_part_initialize;
	has XtEnum            $!class_inited         ;
	has XtInitProc        $!initialize           ;
	has XtArgsProc        $!initialize_hook      ;
	has XtRealizeProc     $!realize              ;
	has XtActionList      $!actions              ;
	has Cardinal          $!num_actions          ;
	has XtResourceList    $!resources            ;
	has Cardinal          $!num_resources        ;
	has XrmClass          $!xrm_class            ;
	has Boolean           $!compress_motion      ;
	has XtEnum            $!compress_exposure    ;
	has Boolean           $!compress_enterleave  ;
	has Boolean           $!visible_interest     ;
	has XtWidgetProc      $!destroy              ;
	has XtWidgetProc      $!resize               ;
	has XtExposeProc      $!expose               ;
	has XtSetValuesFunc   $!set_values           ;
	has XtArgsFunc        $!set_values_hook      ;
	has XtAlmostProc      $!set_values_almost    ;
	has XtArgsProc        $!get_values_hook      ;
	has XtAcceptFocusProc $!accept_focus         ;
	has XtVersionType     $!version              ;
	has XtPointer         $!callback_private     ;
	has String            $!tm_table             ;
	has XtGeometryHandler $!query_geometry       ;
	has XtStringProc      $!display_accelerator  ;
	has XtPointer         $!extension            ;
}

class CorePart is repr<CStruct> is export {
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

class DialogClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has FormClassPart       $!form_class      ;
	has DialogClassPart     $!dialog_class    ;
}

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

class DialogRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has FormPart       $!form      ;
	has DialogPart     $!dialog    ;
}

class EventRec is repr<CStruct> is export {
	has TMLongCard      $!modifiers    ;
	has TMLongCard      $!modifierMask ;
	has LateBindingsPtr $!lateModifiers;
	has TMLongCard      $!eventType    ;
	has TMLongCard      $!eventCode    ;
	has TMLongCard      $!eventCodeMask;
	has MatchProc       $!matchEvent   ;
	has Boolean         $!standard     ;
}

class EventSeqRec is repr<CStruct> is export {
	has Event       $!event  ;
	has StatePtr    $!state  ;
	has EventSeqPtr $!next   ;
	has ActionPtr   $!actions;
}

class ExtensionSelectorRec is repr<CStruct> is export {
	has XtExtensionSelectProc $!proc       ;
	has int                   $!min        ;
	has int                   $!max        ;
	has XtPointer             $!client_data;
}

class ExtentInfo is repr<CStruct> is export {
	has DrawDirection $!drawDirection ;
	has int           $!fontAscent    ;
	has int           $!fontDescent   ;
	has int           $!overallAscent ;
	has int           $!overallDescent;
	has int           $!overallWidth  ;
	has int           $!overallLeft   ;
	has int           $!overallRight  ;
}

class FPEFunctions is repr<CStruct> is export {
	has NameCheckFunc  $!name_check                  ;
	has InitFpeFunc    $!init_fpe                    ;
	has ResetFpeFunc   $!reset_fpe                   ;
	has FreeFpeFunc    $!free_fpe                    ;
	has OpenFontFunc   $!open_font                   ;
	has CloseFontFunc  $!close_font                  ;
	has ListFontsFunc  $!list_fonts                  ;
	has StartLaFunc    $!start_list_fonts_and_aliases;
	has NextLaFunc     $!list_next_font_or_alias     ;
	has StartLfwiFunc  $!start_list_fonts_with_info  ;
	has NextLfwiFunc   $!list_next_font_with_info    ;
	has WakeupFpeFunc  $!wakeup_fpe                  ;
	has ClientDiedFunc $!client_died                 ;
	has LoadGlyphsFunc $!load_glyphs                 ;
	has SetPathFunc    $!set_path_hook               ;
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

class FSQEvent is repr<CStruct> is export {
	has _FSQEvent $!next ;
	has FSEvent   $!event;
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

class FontEnc is repr<CStruct> is export {
	has Str        $!name     ;
	has Str        $!aliases  ;
	has int        $!size     ;
	has int        $!row_size ;
	has FontMapPtr $!mappings ;
	has _FontEnc   $!next     ;
	has int        $!first    ;
	has int        $!first_col;
}

class FontNames is repr<CStruct> is export {
	has int  $!nnames;
	has int  $!size  ;
	has int  $!length;
	has Str  $!names ;
}

class FontPathElement is repr<CStruct> is export {
	has int  $!name_length;
	has Str  $!name       ;
	has int  $!type       ;
	has int  $!refcount   ;
	has void $!private    ;
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

class FormConstraintsPart is repr<CStruct> is export {
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

class FormPart is repr<CStruct> is export {
	has int            $!default_spacing ;
	has Dimension      $!old_width       ;
	has Dimension      $!old_height      ;
	has int            $!no_refigure     ;
	has Boolean        $!needs_relayout  ;
	has Boolean        $!resize_in_layout;
	has Dimension      $!preferred_width ;
	has Dimension      $!preferred_height;
	has Boolean        $!resize_is_no_op ;
	has XawDisplayList $!display_list    ;
	has XtPointer      $!pad             ;
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
	has IcePingReplyProc $!ping_reply_proc;
	has IcePointer       $!client_data    ;
	has _IcePingWait     $!next           ;
}

class IceSavedReplyWait is repr<CStruct> is export {
	has IceReplyWaitInfo   $!reply_wait ;
	has Bool               $!reply_ready;
	has _IceSavedReplyWait $!next       ;
}

class InputEvent is repr<CStruct> is export {
	has XtInputCallbackProc $!ie_proc     ;
	has XtPointer           $!ie_closure  ;
	has _InputEvent         $!ie_next     ;
	has _InputEvent         $!ie_oq       ;
	has XtAppContext        $!app         ;
	has int                 $!ie_source   ;
	has XtInputMask         $!ie_condition;
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

class LangProcRec is repr<CStruct> is export {
	has XtLanguageProc $!proc   ;
	has XtPointer      $!closure;
}

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

class ListRec is repr<CStruct> is export {
	has CorePart   $!core  ;
	has SimplePart $!simple;
	has ListPart   $!list  ;
}

class MenuButtonClass is repr<CStruct> is export {
	has XtPointer $!extension;
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
	has int       $!count;
	has int       $!idx  ;
}

class MultiSinkClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class MultiSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart    $!object_class    ;
	has TextSinkClassPart  $!text_sink_class ;
	has MultiSinkClassPart $!multi_sink_class;
}

class MultiSinkRec is repr<CStruct> is export {
	has ObjectPart    $!object    ;
	has TextSinkPart  $!text_sink ;
	has MultiSinkPart $!multi_sink;
}

class MultiSrcClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class MultiSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSrcClassPart  $!text_src_class ;
	has MultiSrcClassPart $!multi_src_class;
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
	has ObjectPart   $!object   ;
	has TextSrcPart  $!text_src ;
	has MultiSrcPart $!multi_src;
}

class ObjectClassPart is repr<CStruct> is export {
	has WidgetClass       $!superclass           ;
	has String            $!class_name           ;
	has Cardinal          $!widget_size          ;
	has XtProc            $!class_initialize     ;
	has XtWidgetClassProc $!class_part_initialize;
	has XtEnum            $!class_inited         ;
	has XtInitProc        $!initialize           ;
	has XtArgsProc        $!initialize_hook      ;
	has XtProc            $!obj1                 ;
	has XtPointer         $!obj2                 ;
	has Cardinal          $!obj3                 ;
	has XtResourceList    $!resources            ;
	has Cardinal          $!num_resources        ;
	has XrmClass          $!xrm_class            ;
	has Boolean           $!obj4                 ;
	has XtEnum            $!obj5                 ;
	has Boolean           $!obj6                 ;
	has Boolean           $!obj7                 ;
	has XtWidgetProc      $!destroy              ;
	has XtProc            $!obj8                 ;
	has XtProc            $!obj9                 ;
	has XtSetValuesFunc   $!set_values           ;
	has XtArgsFunc        $!set_values_hook      ;
	has XtProc            $!obj10                ;
	has XtArgsProc        $!get_values_hook      ;
	has XtProc            $!obj11                ;
	has XtVersionType     $!version              ;
	has XtPointer         $!callback_private     ;
	has String            $!obj12                ;
	has XtProc            $!obj13                ;
	has XtProc            $!obj14                ;
	has XtPointer         $!extension            ;
}

class ObjectClassRec is repr<CStruct> is export {
	has ObjectClassPart $!object_class;
}

class ObjectPart is repr<CStruct> is export {
	has Widget         $!self             ;
	has WidgetClass    $!widget_class     ;
	has Widget         $!parent           ;
	has XrmName        $!xrm_name         ;
	has Boolean        $!being_destroyed  ;
	has XtCallbackList $!destroy_callbacks;
	has XtPointer      $!constraints      ;
}

class ObjectRec is repr<CStruct> is export {
	has ObjectPart $!object;
}

class OverrideShellClassRec is repr<CStruct> is export {
	has CoreClassPart          $!core_class          ;
	has CompositeClassPart     $!composite_class     ;
	has ShellClassPart         $!shell_class         ;
	has OverrideShellClassPart $!override_shell_class;
}

class PaneStack is repr<CStruct> is export {
	has _PaneStack $!next      ;
	has Pane       $!pane      ;
	has int        $!start_size;
}

class PanedClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class PanedClassRec is repr<CStruct> is export {
	has CoreClassPart       $!core_class      ;
	has CompositeClassPart  $!composite_class ;
	has ConstraintClassPart $!constraint_class;
	has PanedClassPart      $!paned_class     ;
}

class PanedConstraintsPart is repr<CStruct> is export {
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

class PanedRec is repr<CStruct> is export {
	has CorePart       $!core      ;
	has CompositePart  $!composite ;
	has ConstraintPart $!constraint;
	has PanedPart      $!paned     ;
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

class ParamInfoRec is repr<CStruct> is export {
	has int   $!count    ;
	has Param $!paramlist;
}

class ParamRec is repr<CStruct> is export {
	has Atom $!selection;
	has Atom $!param    ;
}

class PerDisplayTable is repr<CStruct> is export {
	has Display            $!dpy   ;
	has XtPerDisplayStruct $!perDpy;
	has _PerDisplayTable   $!next  ;
}

class PortholeClassRec is repr<CStruct> is export {
	has CoreClassPart      $!core_class     ;
	has CompositeClassPart $!composite_class;
	has PortholeClassPart  $!porthole_class ;
}

class PortholeRec is repr<CStruct> is export {
	has CorePart      $!core     ;
	has CompositePart $!composite;
	has PortholePart  $!porthole ;
}

class ProcessContextRec is repr<CStruct> is export {
	has XtAppContext   $!defaultAppContext   ;
	has XtAppContext   $!appContextList      ;
	has ConverterTable $!globalConverterTable;
	has LangProcRec    $!globalLangProcRec   ;
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

class QueuedRequestInfoRec is repr<CStruct> is export {
	has int           $!count     ;
	has Atom          $!selections;
	has QueuedRequest $!requests  ;
}

class QueuedRequestRec is repr<CStruct> is export {
	has Atom                    $!selection  ;
	has Atom                    $!target     ;
	has Atom                    $!param      ;
	has XtSelectionCallbackProc $!callback   ;
	has XtPointer               $!closure    ;
	has Time                    $!time       ;
	has Boolean                 $!incremental;
}

class RectObjClassPart is repr<CStruct> is export {
	has WidgetClass       $!superclass           ;
	has String            $!class_name           ;
	has Cardinal          $!widget_size          ;
	has XtProc            $!class_initialize     ;
	has XtWidgetClassProc $!class_part_initialize;
	has XtEnum            $!class_inited         ;
	has XtInitProc        $!initialize           ;
	has XtArgsProc        $!initialize_hook      ;
	has XtProc            $!rect1                ;
	has XtPointer         $!rect2                ;
	has Cardinal          $!rect3                ;
	has XtResourceList    $!resources            ;
	has Cardinal          $!num_resources        ;
	has XrmClass          $!xrm_class            ;
	has Boolean           $!rect4                ;
	has XtEnum            $!rect5                ;
	has Boolean           $!rect6                ;
	has Boolean           $!rect7                ;
	has XtWidgetProc      $!destroy              ;
	has XtWidgetProc      $!resize               ;
	has XtExposeProc      $!expose               ;
	has XtSetValuesFunc   $!set_values           ;
	has XtArgsFunc        $!set_values_hook      ;
	has XtAlmostProc      $!set_values_almost    ;
	has XtArgsProc        $!get_values_hook      ;
	has XtProc            $!rect9                ;
	has XtVersionType     $!version              ;
	has XtPointer         $!callback_private     ;
	has String            $!rect10               ;
	has XtGeometryHandler $!query_geometry       ;
	has XtProc            $!rect11               ;
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

class RepeaterRec is repr<CStruct> is export {
	has CorePart     $!core    ;
	has SimplePart   $!simple  ;
	has LabelPart    $!label   ;
	has CommandPart  $!command ;
	has RepeaterPart $!repeater;
}

class RequestRec is repr<CStruct> is export {
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

class SignalEventRec is repr<CStruct> is export {
	has XtSignalCallbackProc $!se_proc   ;
	has XtPointer            $!se_closure;
	has _SignalEventRec      $!se_next   ;
	has XtAppContext         $!app       ;
	has Boolean              $!se_notice ;
}

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
	has Cursor         $!cursor              ;
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

class SmeBSBClassPart is repr<CStruct> is export {
	has XtPointer $!extension;
}

class SmeBSBClassRec is repr<CStruct> is export {
	has RectObjClassPart $!rect_class   ;
	has SmeClassPart     $!sme_class    ;
	has SmeBSBClassPart  $!sme_bsb_class;
}

class SmeBSBRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
	has SmePart     $!sme      ;
	has SmeBSBPart  $!sme_bsb  ;
}

class SmeClassPart is repr<CStruct> is export {
	has XtWidgetProc $!highlight  ;
	has XtWidgetProc $!unhighlight;
	has XtWidgetProc $!notify     ;
	has XtPointer    $!extension  ;
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

class SmeLineRec is repr<CStruct> is export {
	has ObjectPart  $!object   ;
	has RectObjPart $!rectangle;
	has SmePart     $!sme      ;
	has SmeLinePart $!sme_line ;
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

class StripChartRec is repr<CStruct> is export {
	has CorePart       $!core       ;
	has SimplePart     $!simple     ;
	has StripChartPart $!strip_chart;
}

class SyncAlarm is repr<CStruct> is export {
	has SyncTrigger         $!trigger      ;
	has ClientPtr           $!client       ;
	has XSyncAlarm          $!alarm_id     ;
	has CARD64              $!delta        ;
	has int                 $!events       ;
	has int                 $!state        ;
	has SyncAlarmClientList $!pEventClients;
}

class SyncAlarmClientList is repr<CStruct> is export {
	has ClientPtr            $!client   ;
	has XID                  $!delete_id;
	has _SyncAlarmClientList $!next     ;
}

class SyncCounter is repr<CStruct> is export {
	has ClientPtr        $!client         ;
	has XSyncCounter     $!id             ;
	has CARD64           $!value          ;
	has _SyncTriggerList $!pTriglist      ;
	has Bool             $!beingDestroyed ;
	has _SysCounterInfo  $!pSysCounterInfo;
}

class SyncTriggerList is repr<CStruct> is export {
	has SyncTrigger      $!pTrigger;
	has _SyncTriggerList $!next    ;
}

class TMComplexBindProcsRec is repr<CStruct> is export {
	has Widget         $!widget   ;
	has XtTranslations $!aXlations;
	has XtActionProc   $!procs    ;
}

class TMConvertRec is repr<CStruct> is export {
	has XtTranslations $!old;
	has XtTranslations $!new;
}

class TMEventRec is repr<CStruct> is export {
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
	has _TMBindCacheRec    $!bindCacheTbl           ;
	has TMShortCard        $!numBindCache           ;
	has TMShortCard        $!bindCacheTblSize       ;
	has TMShortCard        $!numLateBindings        ;
	has TMShortCard        $!numBranchHeads         ;
	has TMShortCard        $!numComplexStates       ;
	has TMShortCard        $!numComplexActions      ;
}

class TMKeyContextRec is repr<CStruct> is export {
	has XEvent     $!event    ;
	has long       $!serial   ;
	has KeySym     $!keysym   ;
	has Modifiers  $!modifiers;
	has TMKeyCache $!keycache ;
}

class TMModifierMatchRec is repr<CStruct> is export {
	has TMLongCard      $!modifiers    ;
	has TMLongCard      $!modifierMask ;
	has LateBindingsPtr $!lateModifiers;
	has Boolean         $!standard     ;
}

class TMSimpleBindProcsRec is repr<CStruct> is export {
	has XtActionProc $!procs;
}

class TMTypeMatchRec is repr<CStruct> is export {
	has TMLongCard $!eventType    ;
	has TMLongCard $!eventCode    ;
	has TMLongCard $!eventCodeMask;
	has MatchProc  $!matchEvent   ;
}

class TemplateClassRec is repr<CStruct> is export {
	has CoreClassPart     $!core_class    ;
	has TemplateClassPart $!template_class;
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

class TextPart is repr<CStruct> is export {
	has Widget               $!source             ;
	has Widget               $!sink               ;
	has XawTextPosition      $!insertPos          ;
	has XawTextSelection     $!s                  ;
	has XawTextSelectType    $!sarray             ;
	has XawTextSelectionSalt $!salt               ;
	has int                  $!left_margin        ;
	has int                  $!dialog_horiz_offset;
	has int                  $!dialog_vert_offset ;
	has Boolean              $!display_caret      ;
	has Boolean              $!auto_fill          ;
	has XawTextScrollMode    $!scroll_vert        ;
	has XawTextScrollMode    $!scroll_horiz       ;
	has XawTextWrapMode      $!wrap               ;
	has XawTextResizeMode    $!resize             ;
	has XawTextMargin        $!r_margin           ;
	has XtCallbackList       $!position_callbacks ;
	has XtPointer            $!pad1               ;
	has XawTextMargin        $!margin             ;
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

class TextSinkClassPart is repr<CStruct> is export {
	has _XawSinkDisplayTextProc       $!DisplayText      ;
	has _XawSinkInsertCursorProc      $!InsertCursor     ;
	has _XawSinkClearToBackgroundProc $!ClearToBackground;
	has _XawSinkFindPositionProc      $!FindPosition     ;
	has _XawSinkFindDistanceProc      $!FindDistance     ;
	has _XawSinkResolveProc           $!Resolve          ;
	has _XawSinkMaxLinesProc          $!MaxLines         ;
	has _XawSinkMaxHeightProc         $!MaxHeight        ;
	has _XawSinkSetTabsProc           $!SetTabs          ;
	has _XawSinkGetCursorBoundsProc   $!GetCursorBounds  ;
	has TextSinkExt                   $!extension        ;
}

class TextSinkClassRec is repr<CStruct> is export {
	has ObjectClassPart   $!object_class   ;
	has TextSinkClassPart $!text_sink_class;
}

class TextSinkRec is repr<CStruct> is export {
	has ObjectPart   $!object   ;
	has TextSinkPart $!text_sink;
}

class TextSrcClassPart is repr<CStruct> is export {
	has _XawSrcReadProc             $!Read            ;
	has _XawSrcReplaceProc          $!Replace         ;
	has _XawSrcScanProc             $!Scan            ;
	has _XawSrcSearchProc           $!Search          ;
	has _XawSrcSetSelectionProc     $!SetSelection    ;
	has _XawSrcConvertSelectionProc $!ConvertSelection;
	has XtPointer                   $!extension       ;
}

class TextSrcClassRec is repr<CStruct> is export {
	has ObjectClassPart  $!object_class ;
	has TextSrcClassPart $!textSrc_class;
}

class TextSrcRec is repr<CStruct> is export {
	has ObjectPart  $!object ;
	has TextSrcPart $!textSrc;
}

class TimerEventRec is repr<CStruct> is export {
	has timeval             $!te_timer_value;
	has _TimerEventRec      $!te_next       ;
	has XtTimerCallbackProc $!te_proc       ;
	has XtAppContext        $!app           ;
	has XtPointer           $!te_closure    ;
}

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
	has XtActionProc $!Set      ;
	has XtActionProc $!Unset    ;
	has XtPointer    $!extension;
}

class ToggleClassRec is repr<CStruct> is export {
	has CoreClassPart    $!core_class   ;
	has SimpleClassPart  $!simple_class ;
	has LabelClassPart   $!label_class  ;
	has CommandClassPart $!command_class;
	has ToggleClassPart  $!toggle_class ;
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

class TranslationData is repr<CStruct> is export { ... }
class TranslationData is repr<CStruct> is export {
	has Str              $!hasBindings  ;
	has Str              $!operation    ;
	has TMShortCard      $!numStateTrees;
	has TranslationData  $!composers    ;
	has EventMask        $!eventMask    ;
	has TMStateTree      $!stateTreeTbl ;
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

class WidgetClassRec is repr<CStruct> is export {
	has CoreClassPart $!core_class;
}

class WidgetInfo is repr<CStruct> is export {
	has short  $!num_widgets;
	has long   $!ids        ;
	has Widget $!real_widget;
}

class WidgetRec is repr<CStruct> is export {
	has CorePart $!core;
}

class WorkProcRec is repr<CStruct> is export {
	has XtWorkProc   $!proc   ;
	has XtPointer    $!closure;
	has _WorkProcRec $!next   ;
	has XtAppContext $!app    ;
}

class XAnimCursor is repr<CStruct> is export {
	has Cursor $!cursor;
	has long   $!delay ;
}

class XAnyClassinfo is repr<CStruct> is export {
	has XID $!c_class;
	has XID $!class  ;
	has int $!length ;
}

class XAsyncEState is repr<CStruct> is export {
	has long  $!min_sequence_number;
	has long  $!max_sequence_number;
	has Str   $!error_code         ;
	has Str   $!major_opcode       ;
	has short $!minor_opcode       ;
	has Str   $!last_error_received;
	has int   $!error_count        ;
}

class XAxisInfo is repr<CStruct> is export {
	has int $!resolution;
	has int $!min_value ;
	has int $!max_value ;
}

class XButtonInfo is repr<CStruct> is export {
	has XID   $!c_class    ;
	has XID   $!class      ;
	has int   $!length     ;
	has short $!num_buttons;
}

class XCircle is repr<CStruct> is export {
	has XFixed $!x     ;
	has XFixed $!y     ;
	has XFixed $!radius;
}

class XComposeStatus is repr<CStruct> is export {
	has XPointer $!compose_ptr  ;
	has int      $!chars_matched;
}

class XConicalGradient is repr<CStruct> is export {
	has XPointFixed $!center;
	has XFixed      $!angle ;
}

class XConnWatchInfo is repr<CStruct> is export {
	has XConnectionWatchProc $!fn         ;
	has XPointer             $!client_data;
	has _XConnWatchInfo      $!next       ;
}

class XConnectionInfo is repr<CStruct> is export {
	has int                      $!fd           ;
	has _XInternalConnectionProc $!read_callback;
	has XPointer                 $!call_data    ;
	has XPointer                 $!watch_data   ;
	has _XConnectionInfo         $!next         ;
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

class XExtDisplayInfo is repr<CStruct> is export {
	has _XExtDisplayInfo $!next   ;
	has Display          $!display;
	has XExtCodes        $!codes  ;
	has XPointer         $!data   ;
}

class XExtEventInfo is repr<CStruct> is export {
	has Mask $!mask;
	has BYTE $!type;
	has BYTE $!word;
}

class XExten is repr<CStruct> is export {
	has _XExten          $!next         ;
	has XExtCodes        $!codes        ;
	has CreateGCType     $!create_GC    ;
	has CopyGCType       $!copy_GC      ;
	has FlushGCType      $!flush_GC     ;
	has FreeGCType       $!free_GC      ;
	has CreateFontType   $!create_Font  ;
	has FreeFontType     $!free_Font    ;
	has CloseDisplayType $!close_display;
	has ErrorType        $!error        ;
	has ErrorStringType  $!error_string ;
	has Str              $!name         ;
	has PrintErrorType   $!error_values ;
	has BeforeFlushType  $!before_flush ;
	has _XExten          $!next_flush   ;
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
	has FreeFuncType   $!atoms        ;
	has FreeModmapType $!modifiermap  ;
	has FreeFuncType   $!key_bindings ;
	has FreeFuncType   $!context_db   ;
	has FreeFuncType   $!defaultCCCs  ;
	has FreeFuncType   $!clientCmaps  ;
	has FreeFuncType   $!intensityMaps;
	has FreeFuncType   $!im_filters   ;
	has FreeFuncType   $!xkb          ;
}

class XGC is repr<CStruct> is export {
	has XExtData $!ext_data;
	has GContext $!gid     ;
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

class XLineFixed is repr<CStruct> is export {
	has XPointFixed $!p1;
	has XPointFixed $!p2;
}

class XLinearGradient is repr<CStruct> is export {
	has XPointFixed $!p1;
	has XPointFixed $!p2;
}

class XPointDouble is repr<CStruct> is export {
	has XDouble $!x;
	has XDouble $!y;
}

class XPointFixed is repr<CStruct> is export {
	has XFixed $!x;
	has XFixed $!y;
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
	has Bool     $!primary  ;
	has Bool     $!automatic;
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
	has Bool    $!graphics_exposures;
	has int     $!subwindow_mode    ;
	has int     $!poly_edge         ;
	has int     $!poly_mode         ;
	has Atom    $!dither            ;
	has Bool    $!component_alpha   ;
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

class XResResourceSizeSpec is repr<CStruct> is export {
	has xXResResourceIdSpec $!spec    ;
	has CARD32              $!bytes   ;
	has CARD32              $!refCount;
	has CARD32              $!useCount;
}

class XSQEvent is repr<CStruct> is export {
	has _XSQEvent $!next       ;
	has XEvent    $!event      ;
	has long      $!qserial_num;
}

class XSpanFix is repr<CStruct> is export {
	has XFixed $!left ;
	has XFixed $!right;
	has XFixed $!y    ;
}

class XSyncSystemCounter is repr<CStruct> is export {
	has Str          $!name      ;
	has XSyncCounter $!counter   ;
	has XSyncValue   $!resolution;
}

class XSyncValue is repr<CStruct> is export {
	has int $!hi;
	has int $!lo;
}

class XTrap is repr<CStruct> is export {
	has XSpanFix $!top   ;
	has XSpanFix $!bottom;
}

class XTrapezoid is repr<CStruct> is export {
	has XFixed     $!top   ;
	has XFixed     $!bottom;
	has XLineFixed $!left  ;
	has XLineFixed $!right ;
}

class XTriangle is repr<CStruct> is export {
	has XPointFixed $!p1;
	has XPointFixed $!p2;
	has XPointFixed $!p3;
}

class XValuatorInfo is repr<CStruct> is export {
	has XID          $!c_class      ;
	has XID          $!class        ;
	has int          $!length       ;
	has Str          $!num_axes     ;
	has Str          $!mode         ;
	has long         $!motion_buffer;
	has XAxisInfoPtr $!axes         ;
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

class XawIcPart is repr<CStruct> is export {
	has XIMStyle       $!input_style     ;
	has Boolean        $!shared_ic       ;
	has XawIcTableList $!shared_ic_table ;
	has XawIcTableList $!current_ic_table;
	has XawIcTableList $!ic_table        ;
}

class XawIcTablePart is repr<CStruct> is export {
	has Widget          $!widget         ;
	has XIC             $!xic            ;
	has XIMStyle        $!input_style    ;
	has long            $!flg            ;
	has long            $!prev_flg       ;
	has Boolean         $!ic_focused     ;
	has XFontSet        $!font_set       ;
	has Pixel           $!foreground     ;
	has Pixel           $!background     ;
	has Pixmap          $!bg_pixmap      ;
	has XawTextPosition $!cursor_position;
	has long            $!line_spacing   ;
	has Boolean         $!openic_error   ;
	has _XawIcTablePart $!next           ;
}

class XawImPart is repr<CStruct> is export {
	has XIM             $!xim          ;
	has XrmResourceList $!resources    ;
	has Cardinal        $!num_resources;
	has Boolean         $!open_im      ;
	has Boolean         $!initialized  ;
	has Dimension       $!area_height  ;
	has String          $!input_method ;
	has String          $!preedit_type ;
}

class XawListReturnStruct is repr<CStruct> is export {
	has String $!string    ;
	has int    $!list_index;
}

class XawTextEntity is repr<CStruct> is export {
	has short           $!type    ;
	has short           $!flags   ;
	has XawTextEntity   $!next    ;
	has XtPointer       $!data    ;
	has XawTextPosition $!offset  ;
	has Cardinal        $!length  ;
	has XrmQuark        $!property;
}

class XawTextMargin is repr<CStruct> is export {
	has Position $!left  ;
	has Position $!right ;
	has Position $!top   ;
	has Position $!bottom;
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

class XawTextProperty is repr<CStruct> is export {
	has XrmQuark    $!identifier         ;
	has XrmQuark    $!code               ;
	has long        $!mask               ;
	has XFontStruct $!font               ;
	has XFontSet    $!fontset            ;
	has Pixel       $!foreground         ;
	has Pixel       $!background         ;
	has Pixmap      $!foreground_pixmap  ;
	has Pixmap      $!background_pixmap  ;
	has XrmQuark    $!xlfd               ;
	has long        $!xlfd_mask          ;
	has XrmQuark    $!foundry            ;
	has XrmQuark    $!family             ;
	has XrmQuark    $!weight             ;
	has XrmQuark    $!slant              ;
	has XrmQuark    $!setwidth           ;
	has XrmQuark    $!addstyle           ;
	has XrmQuark    $!pixel_size         ;
	has XrmQuark    $!point_size         ;
	has XrmQuark    $!res_x              ;
	has XrmQuark    $!res_y              ;
	has XrmQuark    $!spacing            ;
	has XrmQuark    $!avgwidth           ;
	has XrmQuark    $!registry           ;
	has XrmQuark    $!encoding           ;
	has short       $!underline_position ;
	has short       $!underline_thickness;
}

class XawTextPropertyList is repr<CStruct> is export {
	has XrmQuark            $!identifier    ;
	has Screen              $!screen        ;
	has Colormap            $!colormap      ;
	has int                 $!depth         ;
	has XawTextProperty     $!properties    ;
	has Cardinal            $!num_properties;
	has XawTextPropertyList $!next          ;
}

class XawTextSelectionSalt is repr<CStruct> is export {
	has _XawTextSelectionSalt $!next    ;
	has XawTextSelection      $!s       ;
	has Str                   $!contents;
	has int                   $!length  ;
}

class XawVendorShellExtRec is repr<CStruct> is export {
	has ObjectPart            $!object    ;
	has XawVendorShellExtPart $!vendor_ext;
}

class XcmsCCC is repr<CStruct> is export {
	has Display             $!dpy                 ;
	has int                 $!screenNumber        ;
	has Visual              $!visual              ;
	has XcmsColor           $!clientWhitePt       ;
	has XcmsCompressionProc $!gamutCompProc       ;
	has XPointer            $!gamutCompClientData ;
	has XcmsWhiteAdjustProc $!whitePtAdjProc      ;
	has XPointer            $!whitePtAdjClientData;
	has XcmsPerScrnInfo     $!pPerScrnInfo        ;
}

class XcmsColorSpace is repr<CStruct> is export {
	has Str                 $!prefix      ;
	has XcmsColorFormat     $!id          ;
	has XcmsParseStringProc $!parseString ;
	has XcmsFuncListPtr     $!to_CIEXYZ   ;
	has XcmsFuncListPtr     $!from_CIEXYZ ;
	has int                 $!inverse_flag;
}

class XcmsFunctionSet is repr<CStruct> is export {
	has XcmsColorSpace     $!DDColorSpaces ;
	has XcmsScreenInitProc $!screenInitProc;
	has XcmsScreenFreeProc $!screenFreeProc;
}

class XcmsPerScrnInfo is repr<CStruct> is export {
	has XcmsColor $!screenWhitePt;
	has XPointer  $!functionSet  ;
	has XPointer  $!screenData   ;
	has Str       $!state        ;
	has Str       $!pad          ;
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

class XcursorAnimate is repr<CStruct> is export {
	has XcursorCursors $!cursors ;
	has int            $!sequence;
}

class XcursorChunkHeader is repr<CStruct> is export {
	has XcursorUInt $!header ;
	has XcursorUInt $!type   ;
	has XcursorUInt $!subtype;
	has XcursorUInt $!version;
}

class XcursorComment is repr<CStruct> is export {
	has XcursorUInt $!version     ;
	has XcursorUInt $!comment_type;
	has Str         $!comment     ;
}

class XcursorComments is repr<CStruct> is export {
	has int            $!ncomment;
	has XcursorComment $!comments;
}

class XcursorCursors is repr<CStruct> is export {
	has Display $!dpy    ;
	has int     $!ref    ;
	has int     $!ncursor;
	has Cursor  $!cursors;
}

class XcursorFileHeader is repr<CStruct> is export {
	has XcursorUInt    $!magic  ;
	has XcursorUInt    $!header ;
	has XcursorUInt    $!version;
	has XcursorUInt    $!ntoc   ;
	has XcursorFileToc $!tocs   ;
}

class XcursorFileToc is repr<CStruct> is export {
	has XcursorUInt $!type    ;
	has XcursorUInt $!subtype ;
	has XcursorUInt $!position;
}

class XcursorImage is repr<CStruct> is export {
	has XcursorUInt  $!version;
	has XcursorDim   $!size   ;
	has XcursorDim   $!width  ;
	has XcursorDim   $!height ;
	has XcursorDim   $!xhot   ;
	has XcursorDim   $!yhot   ;
	has XcursorUInt  $!delay  ;
	has XcursorPixel $!pixels ;
}

class XcursorImages is repr<CStruct> is export {
	has int          $!nimage;
	has XcursorImage $!images;
	has Str          $!name  ;
}

class XdmAuthKey is repr<CStruct> is export {
	has BYTE $!data;
}

class XdmcpBuffer is repr<CStruct> is export {
	has BYTE $!data   ;
	has int  $!size   ;
	has int  $!pointer;
	has int  $!count  ;
}

class XdmcpHeader is repr<CStruct> is export {
	has CARD16 $!version;
	has CARD16 $!opcode ;
	has CARD16 $!length ;
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

class XftFont is repr<CStruct> is export {
	has int       $!ascent           ;
	has int       $!descent          ;
	has int       $!height           ;
	has int       $!max_advance_width;
	has FcCharSet $!charset          ;
	has FcPattern $!pattern          ;
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
	has int     $!type          ;
	has long    $!serial        ;
	has Bool    $!send_event    ;
	has Display $!display       ;
	has Time    $!time          ;
	has int     $!xkb_type      ;
	has int     $!device        ;
	has int     $!detail        ;
	has int     $!keycode       ;
	has int     $!sk_delay      ;
	has int     $!debounce_delay;
}

class XkbAnyDoodad is repr<CStruct> is export {
	has Atom  $!name    ;
	has Str   $!type    ;
	has Str   $!priority;
	has short $!top     ;
	has short $!left    ;
	has short $!angle   ;
}

class XkbAnyEvent is repr<CStruct> is export {
	has int     $!type      ;
	has long    $!serial    ;
	has Bool    $!send_event;
	has Display $!display   ;
	has Time    $!time      ;
	has int     $!xkb_type  ;
	has int     $!device    ;
}

class XkbBehavior is repr<CStruct> is export {
	has Str  $!type;
	has Str  $!data;
}

class XkbBellNotify is repr<CStruct> is export {
	has int     $!type      ;
	has long    $!serial    ;
	has Bool    $!send_event;
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
	has Bool    $!event_only;
}

class XkbBounds is repr<CStruct> is export {
	has short $!x1;
	has short $!y1;
	has short $!x2;
	has short $!y2;
}

class XkbChanges is repr<CStruct> is export {
	has short                  $!device_spec  ;
	has short                  $!state_changes;
	has XkbMapChangesRec       $!map          ;
	has XkbControlsChangesRec  $!ctrls        ;
	has XkbIndicatorChangesRec $!indicators   ;
	has XkbNameChangesRec      $!names        ;
	has XkbCompatChangesRec    $!compat       ;
}

class XkbClientMapRec is repr<CStruct> is export {
	has Str           $!size_types ;
	has Str           $!num_types  ;
	has XkbKeyTypePtr $!types      ;
	has short         $!size_syms  ;
	has short         $!num_syms   ;
	has KeySym        $!syms       ;
	has XkbSymMapPtr  $!key_sym_map;
	has Str           $!modmap     ;
}

class XkbColor is repr<CStruct> is export {
	has int  $!pixel;
	has Str  $!spec ;
}

class XkbCompatChanges is repr<CStruct> is export {
	has Str   $!changed_groups;
	has short $!first_si      ;
	has short $!num_si        ;
}

class XkbCompatMapNotify is repr<CStruct> is export {
	has int     $!type          ;
	has long    $!serial        ;
	has Bool    $!send_event    ;
	has Display $!display       ;
	has Time    $!time          ;
	has int     $!xkb_type      ;
	has int     $!device        ;
	has int     $!changed_groups;
	has int     $!first_si      ;
	has int     $!num_si        ;
	has int     $!num_total_si  ;
}

class XkbComponentList is repr<CStruct> is export {
	has int                 $!num_keymaps ;
	has int                 $!num_keycodes;
	has int                 $!num_types   ;
	has int                 $!num_compat  ;
	has int                 $!num_symbols ;
	has int                 $!num_geometry;
	has XkbComponentNamePtr $!keymaps     ;
	has XkbComponentNamePtr $!keycodes    ;
	has XkbComponentNamePtr $!types       ;
	has XkbComponentNamePtr $!compat      ;
	has XkbComponentNamePtr $!symbols     ;
	has XkbComponentNamePtr $!geometry    ;
}

class XkbComponentName is repr<CStruct> is export {
	has short $!flags;
	has Str   $!name ;
}

class XkbComponentNames is repr<CStruct> is export {
	has Str  $!keymap  ;
	has Str  $!keycodes;
	has Str  $!types   ;
	has Str  $!compat  ;
	has Str  $!symbols ;
	has Str  $!geometry;
}

class XkbConfigField is repr<CStruct> is export {
	has Str  $!field   ;
	has Str  $!field_id;
}

class XkbConfigFields is repr<CStruct> is export {
	has short               $!cfg_id    ;
	has short               $!num_fields;
	has XkbConfigFieldPtr   $!fields    ;
	has XkbConfigParseFunc  $!parser    ;
	has XkbConfigFinishFunc $!finish    ;
	has XPointer            $!priv      ;
	has _XkbConfigFields    $!next      ;
}

class XkbConfigModInfo is repr<CStruct> is export {
	has Bool  $!replace    ;
	has Str   $!mods       ;
	has Str   $!mods_clear ;
	has short $!vmods      ;
	has short $!vmods_clear;
}

class XkbConfigRtrnPriv is repr<CStruct> is export {
	has int                $!cfg_id;
	has XPointer           $!priv  ;
	has _XkbConfigRtrnPriv $!next  ;
}

class XkbConfigUnboundMod is repr<CStruct> is export {
	has Str   $!what ;
	has Str   $!mods ;
	has short $!vmods;
	has short $!merge;
	has Str   $!name ;
}

class XkbControlsChanges is repr<CStruct> is export {
	has int  $!changed_ctrls        ;
	has int  $!enabled_ctrls_changes;
	has Bool $!num_groups_changed   ;
}

class XkbControlsNotify is repr<CStruct> is export {
	has int     $!type                ;
	has long    $!serial              ;
	has Bool    $!send_event          ;
	has Display $!display             ;
	has Time    $!time                ;
	has int     $!xkb_type            ;
	has int     $!device              ;
	has int     $!changed_ctrls       ;
	has int     $!enabled_ctrls       ;
	has int     $!enabled_ctrl_changes;
	has int     $!num_groups          ;
	has KeyCode $!keycode             ;
	has Str     $!event_type          ;
	has Str     $!req_major           ;
	has Str     $!req_minor           ;
}

class XkbCtrlsAction is repr<CStruct> is export {
	has Str  $!type  ;
	has Str  $!flags ;
	has Str  $!ctrls3;
	has Str  $!ctrls2;
	has Str  $!ctrls1;
	has Str  $!ctrls0;
}

class XkbDesc is repr<CStruct> is export {
	has _XDisplay       $!dpy         ;
	has short           $!flags       ;
	has short           $!device_spec ;
	has KeyCode         $!min_key_code;
	has KeyCode         $!max_key_code;
	has XkbControlsPtr  $!ctrls       ;
	has XkbServerMapPtr $!server      ;
	has XkbClientMapPtr $!map         ;
	has XkbIndicatorPtr $!indicators  ;
	has XkbNamesPtr     $!names       ;
	has XkbCompatMapPtr $!compat      ;
	has XkbGeometryPtr  $!geom        ;
}

class XkbDeviceBtnAction is repr<CStruct> is export {
	has Str  $!type  ;
	has Str  $!flags ;
	has Str  $!count ;
	has Str  $!button;
	has Str  $!device;
}

class XkbDeviceChanges is repr<CStruct> is export {
	has int                    $!changed  ;
	has short                  $!first_btn;
	has short                  $!num_btns ;
	has XkbDeviceLedChangesRec $!leds     ;
}

class XkbDeviceInfo is repr<CStruct> is export {
	has Str                 $!name         ;
	has Atom                $!type         ;
	has short               $!device_spec  ;
	has Bool                $!has_own_state;
	has short               $!supported    ;
	has short               $!unsupported  ;
	has short               $!num_btns     ;
	has XkbAction           $!btn_acts     ;
	has short               $!sz_leds      ;
	has short               $!num_leds     ;
	has short               $!dflt_kbd_fb  ;
	has short               $!dflt_led_fb  ;
	has XkbDeviceLedInfoPtr $!leds         ;
}

class XkbDeviceLedChanges is repr<CStruct> is export {
	has short                $!led_class;
	has short                $!led_id   ;
	has int                  $!defined  ;
	has _XkbDeviceLedChanges $!next     ;
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

class XkbEventCause is repr<CStruct> is export {
	has CARD8     $!kc    ;
	has CARD8     $!event ;
	has CARD8     $!mjr   ;
	has CARD8     $!mnr   ;
	has ClientPtr $!client;
}

class XkbExtensionDeviceNotify is repr<CStruct> is export {
	has int     $!type        ;
	has long    $!serial      ;
	has Bool    $!send_event  ;
	has Display $!display     ;
	has Time    $!time        ;
	has int     $!xkb_type    ;
	has int     $!device      ;
	has int     $!reason      ;
	has int     $!supported   ;
	has int     $!unsupported ;
	has int     $!first_btn   ;
	has int     $!num_btns    ;
	has int     $!leds_defined;
	has int     $!led_state   ;
	has int     $!led_class   ;
	has int     $!led_id      ;
}

class XkbGeometry is repr<CStruct> is export {
	has Atom           $!name           ;
	has short          $!width_mm       ;
	has short          $!height_mm      ;
	has Str            $!label_font     ;
	has XkbColorPtr    $!label_color    ;
	has XkbColorPtr    $!base_color     ;
	has short          $!sz_properties  ;
	has short          $!sz_colors      ;
	has short          $!sz_shapes      ;
	has short          $!sz_sections    ;
	has short          $!sz_doodads     ;
	has short          $!sz_key_aliases ;
	has short          $!num_properties ;
	has short          $!num_colors     ;
	has short          $!num_shapes     ;
	has short          $!num_sections   ;
	has short          $!num_doodads    ;
	has short          $!num_key_aliases;
	has XkbPropertyPtr $!properties     ;
	has XkbColorPtr    $!colors         ;
	has XkbShapePtr    $!shapes         ;
	has XkbSectionPtr  $!sections       ;
	has XkbDoodadPtr   $!doodads        ;
	has XkbKeyAliasPtr $!key_aliases    ;
}

class XkbGeometrySizes is repr<CStruct> is export {
	has int   $!which          ;
	has short $!num_properties ;
	has short $!num_colors     ;
	has short $!num_shapes     ;
	has short $!num_sections   ;
	has short $!num_doodads    ;
	has short $!num_key_aliases;
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

class XkbIndicatorChanges is repr<CStruct> is export {
	has int $!state_changes;
	has int $!map_changes  ;
}

class XkbIndicatorDoodad is repr<CStruct> is export {
	has Atom  $!name         ;
	has Str   $!type         ;
	has Str   $!priority     ;
	has short $!top          ;
	has short $!left         ;
	has short $!angle        ;
	has short $!shape_ndx    ;
	has short $!on_color_ndx ;
	has short $!off_color_ndx;
}

class XkbIndicatorMapRec is repr<CStruct> is export {
	has Str        $!flags       ;
	has Str        $!which_groups;
	has Str        $!groups      ;
	has Str        $!which_mods  ;
	has XkbModsRec $!mods        ;
	has int        $!ctrls       ;
}

class XkbIndicatorNotify is repr<CStruct> is export {
	has int     $!type      ;
	has long    $!serial    ;
	has Bool    $!send_event;
	has Display $!display   ;
	has Time    $!time      ;
	has int     $!xkb_type  ;
	has int     $!device    ;
	has int     $!changed   ;
	has int     $!state     ;
}

class XkbInterest is repr<CStruct> is export {
	has DeviceIntPtr $!dev              ;
	has ClientPtr    $!client           ;
	has XID          $!resource         ;
	has _XkbInterest $!next             ;
	has CARD16       $!extDevNotifyMask ;
	has CARD16       $!stateNotifyMask  ;
	has CARD16       $!namesNotifyMask  ;
	has CARD32       $!ctrlsNotifyMask  ;
	has CARD8        $!compatNotifyMask ;
	has BOOL         $!bellNotifyMask   ;
	has BOOL         $!actionMessageMask;
	has CARD16       $!accessXNotifyMask;
	has CARD32       $!iStateNotifyMask ;
	has CARD32       $!iMapNotifyMask   ;
	has CARD16       $!altSymsNotifyMask;
	has CARD32       $!autoCtrls        ;
	has CARD32       $!autoCtrlValues   ;
}

class XkbKTMapEntry is repr<CStruct> is export {
	has Bool       $!active;
	has Str        $!level ;
	has XkbModsRec $!mods  ;
}

class XkbKey is repr<CStruct> is export {
	has XkbKeyNameRec $!name     ;
	has short         $!gap      ;
	has Str           $!shape_ndx;
	has Str           $!color_ndx;
}

class XkbKeyType is repr<CStruct> is export {
	has XkbModsRec       $!mods       ;
	has Str              $!num_levels ;
	has Str              $!map_count  ;
	has XkbKTMapEntryPtr $!map        ;
	has XkbModsPtr       $!preserve   ;
	has Atom             $!name       ;
	has Atom             $!level_names;
}

class XkbLogoDoodad is repr<CStruct> is export {
	has Atom  $!name     ;
	has Str   $!type     ;
	has Str   $!priority ;
	has short $!top      ;
	has short $!left     ;
	has short $!angle    ;
	has short $!color_ndx;
	has short $!shape_ndx;
	has Str   $!logo_name;
}

class XkbMapChanges is repr<CStruct> is export {
	has short   $!changed           ;
	has KeyCode $!min_key_code      ;
	has KeyCode $!max_key_code      ;
	has Str     $!first_type        ;
	has Str     $!num_types         ;
	has KeyCode $!first_key_sym     ;
	has Str     $!num_key_syms      ;
	has KeyCode $!first_key_act     ;
	has Str     $!num_key_acts      ;
	has KeyCode $!first_key_behavior;
	has Str     $!num_key_behaviors ;
	has KeyCode $!first_key_explicit;
	has Str     $!num_key_explicit  ;
	has KeyCode $!first_modmap_key  ;
	has Str     $!num_modmap_keys   ;
	has KeyCode $!first_vmodmap_key ;
	has Str     $!num_vmodmap_keys  ;
	has Str     $!pad               ;
	has short   $!vmods             ;
}

class XkbMapNotifyEvent is repr<CStruct> is export {
	has int     $!type              ;
	has long    $!serial            ;
	has Bool    $!send_event        ;
	has Display $!display           ;
	has Time    $!time              ;
	has int     $!xkb_type          ;
	has int     $!device            ;
	has int     $!changed           ;
	has int     $!flags             ;
	has int     $!first_type        ;
	has int     $!num_types         ;
	has KeyCode $!min_key_code      ;
	has KeyCode $!max_key_code      ;
	has KeyCode $!first_key_sym     ;
	has KeyCode $!first_key_act     ;
	has KeyCode $!first_key_behavior;
	has KeyCode $!first_key_explicit;
	has KeyCode $!first_modmap_key  ;
	has KeyCode $!first_vmodmap_key ;
	has int     $!num_key_syms      ;
	has int     $!num_key_acts      ;
	has int     $!num_key_behaviors ;
	has int     $!num_key_explicit  ;
	has int     $!num_modmap_keys   ;
	has int     $!num_vmodmap_keys  ;
	has int     $!vmods             ;
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

class XkbMods is repr<CStruct> is export {
	has Str   $!mask     ;
	has Str   $!real_mods;
	has short $!vmods    ;
}

class XkbNameChanges is repr<CStruct> is export {
	has int   $!changed           ;
	has Str   $!first_type        ;
	has Str   $!num_types         ;
	has Str   $!first_lvl         ;
	has Str   $!num_lvls          ;
	has Str   $!num_aliases       ;
	has Str   $!num_rg            ;
	has Str   $!first_key         ;
	has Str   $!num_keys          ;
	has short $!changed_vmods     ;
	has long  $!changed_indicators;
	has Str   $!changed_groups    ;
}

class XkbNamesNotify is repr<CStruct> is export {
	has int     $!type              ;
	has long    $!serial            ;
	has Bool    $!send_event        ;
	has Display $!display           ;
	has Time    $!time              ;
	has int     $!xkb_type          ;
	has int     $!device            ;
	has int     $!changed           ;
	has int     $!first_type        ;
	has int     $!num_types         ;
	has int     $!first_lvl         ;
	has int     $!num_lvls          ;
	has int     $!num_aliases       ;
	has int     $!num_radio_groups  ;
	has int     $!changed_vmods     ;
	has int     $!changed_groups    ;
	has int     $!changed_indicators;
	has int     $!first_key         ;
	has int     $!num_keys          ;
}

class XkbNewKeyboardNotify is repr<CStruct> is export {
	has int     $!type            ;
	has long    $!serial          ;
	has Bool    $!send_event      ;
	has Display $!display         ;
	has Time    $!time            ;
	has int     $!xkb_type        ;
	has int     $!device          ;
	has int     $!old_device      ;
	has int     $!min_key_code    ;
	has int     $!max_key_code    ;
	has int     $!old_min_key_code;
	has int     $!old_max_key_code;
	has int     $!changed         ;
	has Str     $!req_major       ;
	has Str     $!req_minor       ;
}

class XkbOutline is repr<CStruct> is export {
	has short       $!num_points   ;
	has short       $!sz_points    ;
	has short       $!corner_radius;
	has XkbPointPtr $!points       ;
}

class XkbOverlay is repr<CStruct> is export {
	has Atom             $!name         ;
	has XkbSectionPtr    $!section_under;
	has short            $!num_rows     ;
	has short            $!sz_rows      ;
	has XkbOverlayRowPtr $!rows         ;
	has XkbBoundsPtr     $!bounds       ;
}

class XkbOverlayKey is repr<CStruct> is export {
	has XkbKeyNameRec $!over ;
	has XkbKeyNameRec $!under;
}

class XkbOverlayRow is repr<CStruct> is export {
	has short            $!row_under;
	has short            $!num_keys ;
	has short            $!sz_keys  ;
	has XkbOverlayKeyPtr $!keys     ;
}

class XkbPoint is repr<CStruct> is export {
	has short $!x;
	has short $!y;
}

class XkbProperty is repr<CStruct> is export {
	has Str  $!name ;
	has Str  $!value;
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

class XkbRF_DescribeVars is repr<CStruct> is export {
	has int              $!sz_desc ;
	has int              $!num_desc;
	has XkbRF_VarDescPtr $!desc    ;
}

class XkbRF_Group is repr<CStruct> is export {
	has int  $!number;
	has Str  $!name  ;
	has Str  $!words ;
}

class XkbRF_Rules is repr<CStruct> is export {
	has XkbRF_DescribeVarsRec $!models     ;
	has XkbRF_DescribeVarsRec $!layouts    ;
	has XkbRF_DescribeVarsRec $!variants   ;
	has XkbRF_DescribeVarsRec $!options    ;
	has short                 $!sz_extra   ;
	has short                 $!num_extra  ;
	has Str                   $!extra_names;
	has XkbRF_DescribeVarsPtr $!extra      ;
	has short                 $!sz_rules   ;
	has short                 $!num_rules  ;
	has XkbRF_RulePtr         $!rules      ;
	has short                 $!sz_groups  ;
	has short                 $!num_groups ;
	has XkbRF_GroupPtr        $!groups     ;
}

class XkbRF_VarDefs is repr<CStruct> is export {
	has Str   $!model       ;
	has Str   $!layout      ;
	has Str   $!variant     ;
	has Str   $!options     ;
	has short $!sz_extra    ;
	has short $!num_extra   ;
	has Str   $!extra_names ;
	has Str   $!extra_values;
}

class XkbRF_VarDesc is repr<CStruct> is export {
	has Str  $!name;
	has Str  $!desc;
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

class XkbRow is repr<CStruct> is export {
	has short        $!top     ;
	has short        $!left    ;
	has short        $!num_keys;
	has short        $!sz_keys ;
	has int          $!vertical;
	has XkbKeyPtr    $!keys    ;
	has XkbBoundsRec $!bounds  ;
}

class XkbSection is repr<CStruct> is export {
	has Atom         $!name        ;
	has Str          $!priority    ;
	has short        $!top         ;
	has short        $!left        ;
	has short        $!width       ;
	has short        $!height      ;
	has short        $!angle       ;
	has short        $!num_rows    ;
	has short        $!num_doodads ;
	has short        $!num_overlays;
	has short        $!sz_rows     ;
	has short        $!sz_doodads  ;
	has short        $!sz_overlays ;
	has XkbRowPtr    $!rows        ;
	has XkbDoodadPtr $!doodads     ;
	has XkbBoundsRec $!bounds      ;
	has _XkbOverlay  $!overlays    ;
}

class XkbShape is repr<CStruct> is export {
	has Atom          $!name        ;
	has short         $!num_outlines;
	has short         $!sz_outlines ;
	has XkbOutlinePtr $!outlines    ;
	has XkbOutlinePtr $!approx      ;
	has XkbOutlinePtr $!primary     ;
	has XkbBoundsRec  $!bounds      ;
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

class XkbSrvInfo is repr<CStruct> is export {
	has XkbStateRec      $!prev_state          ;
	has XkbStateRec      $!state               ;
	has XkbDescPtr       $!desc                ;
	has DeviceIntPtr     $!device              ;
	has KbdCtrlProcPtr   $!kbdProc             ;
	has XkbRadioGroupPtr $!radioGroups         ;
	has CARD8            $!nRadioGroups        ;
	has CARD8            $!clearMods           ;
	has CARD8            $!setMods             ;
	has INT16            $!groupChange         ;
	has CARD16           $!dfltPtrDelta        ;
	has double           $!mouseKeysCurve      ;
	has double           $!mouseKeysCurveFactor;
	has INT16            $!mouseKeysDX         ;
	has INT16            $!mouseKeysDY         ;
	has CARD8            $!mouseKeysFlags      ;
	has Bool             $!mouseKeysAccel      ;
	has CARD8            $!mouseKeysCounter    ;
	has CARD8            $!lockedPtrButtons    ;
	has CARD8            $!shiftKeyCount       ;
	has KeyCode          $!mouseKey            ;
	has KeyCode          $!inactiveKey         ;
	has KeyCode          $!slowKey             ;
	has KeyCode          $!repeatKey           ;
	has CARD8            $!krgTimerActive      ;
	has CARD8            $!beepType            ;
	has CARD8            $!beepCount           ;
	has CARD32           $!flags               ;
	has CARD32           $!lastPtrEventTime    ;
	has CARD32           $!lastShiftEventTime  ;
	has OsTimerPtr       $!beepTimer           ;
	has OsTimerPtr       $!mouseKeyTimer       ;
	has OsTimerPtr       $!slowKeysTimer       ;
	has OsTimerPtr       $!bounceKeysTimer     ;
	has OsTimerPtr       $!repeatKeyTimer      ;
	has OsTimerPtr       $!krgTimer            ;
}

class XkbStateNotifyEvent is repr<CStruct> is export {
	has int     $!type              ;
	has long    $!serial            ;
	has Bool    $!send_event        ;
	has Display $!display           ;
	has Time    $!time              ;
	has int     $!xkb_type          ;
	has int     $!device            ;
	has int     $!changed           ;
	has int     $!group             ;
	has int     $!base_group        ;
	has int     $!latched_group     ;
	has int     $!locked_group      ;
	has int     $!mods              ;
	has int     $!base_mods         ;
	has int     $!latched_mods      ;
	has int     $!locked_mods       ;
	has int     $!compat_state      ;
	has Str     $!grab_mods         ;
	has Str     $!compat_grab_mods  ;
	has Str     $!lookup_mods       ;
	has Str     $!compat_lookup_mods;
	has int     $!ptr_buttons       ;
	has KeyCode $!keycode           ;
	has Str     $!event_type        ;
	has Str     $!req_major         ;
	has Str     $!req_minor         ;
}

class XkbStateRec is repr<CStruct> is export {
	has Str   $!group             ;
	has Str   $!locked_group      ;
	has short $!base_group        ;
	has short $!latched_group     ;
	has Str   $!mods              ;
	has Str   $!base_mods         ;
	has Str   $!latched_mods      ;
	has Str   $!locked_mods       ;
	has Str   $!compat_state      ;
	has Str   $!grab_mods         ;
	has Str   $!compat_grab_mods  ;
	has Str   $!lookup_mods       ;
	has Str   $!compat_lookup_mods;
	has short $!ptr_buttons       ;
}

class XkbSwitchScreenAction is repr<CStruct> is export {
	has Str  $!type     ;
	has Str  $!flags    ;
	has Str  $!screenXXX;
}

class XkbSymInterpretRec is repr<CStruct> is export {
	has KeySym       $!sym        ;
	has Str          $!flags      ;
	has Str          $!match      ;
	has Str          $!mods       ;
	has Str          $!virtual_mod;
	has XkbAnyAction $!act        ;
}

class XkbTextDoodad is repr<CStruct> is export {
	has Atom  $!name     ;
	has Str   $!type     ;
	has Str   $!priority ;
	has short $!top      ;
	has short $!left     ;
	has short $!angle    ;
	has short $!width    ;
	has short $!height   ;
	has short $!color_ndx;
	has Str   $!text     ;
	has Str   $!font     ;
}

class XmuArea is repr<CStruct> is export {
	has XmuScanline $!scanline;
}

class XmuScanline is repr<CStruct> is export {
	has int          $!y      ;
	has XmuSegment   $!segment;
	has _XmuScanline $!next   ;
}

class XmuSegment is repr<CStruct> is export {
	has int         $!x1  ;
	has int         $!x2  ;
	has _XmuSegment $!next;
}

class XtActionsRec is repr<CStruct> is export {
	has String       $!string;
	has XtActionProc $!proc  ;
}

class XtAppStruct is repr<CStruct> is export {
	has XtAppContext             $!next              ;
	has ProcessContext           $!process           ;
	has InternalCallbackList     $!destroy_callbacks ;
	has Display                  $!list              ;
	has TimerEventRec            $!timerQueue        ;
	has WorkProcRec              $!workQueue         ;
	has InputEvent               $!input_list        ;
	has InputEvent               $!outstandingQueue  ;
	has SignalEventRec           $!signalQueue       ;
	has XrmDatabase              $!errorDB           ;
	has XtErrorMsgHandler        $!errorMsgHandler   ;
	has XtErrorMsgHandler        $!warningMsgHandler ;
	has XtErrorHandler           $!errorHandler      ;
	has XtErrorHandler           $!warningHandler    ;
	has _ActionListRec           $!action_table      ;
	has ConverterTable           $!converterTable    ;
	has long                     $!selectionTimeout  ;
	has FdStruct                 $!fds               ;
	has short                    $!count             ;
	has short                    $!max               ;
	has short                    $!last              ;
	has short                    $!input_count       ;
	has short                    $!input_max         ;
	has Boolean                  $!sync              ;
	has Boolean                  $!being_destroyed   ;
	has Boolean                  $!error_inited      ;
	has Boolean                  $!identify_windows  ;
	has Heap                     $!heap              ;
	has String                   $!fallback_resources;
	has _ActionHookRec           $!action_hook_list  ;
	has _BlockHookRec            $!block_hook_list   ;
	has int                      $!destroy_list_size ;
	has int                      $!destroy_count     ;
	has int                      $!dispatch_level    ;
	has DestroyRec               $!destroy_list      ;
	has Widget                   $!in_phase2_destroy ;
	has LangProcRec              $!langProcRec       ;
	has _TMBindCacheRec          $!free_bindings     ;
	has _XtString                $!display_name_tried;
	has Display                  $!dpy_destroy_list  ;
	has int                      $!dpy_destroy_count ;
	has Boolean                  $!exit_flag         ;
	has Boolean                  $!rebuild_fdlist    ;
	has LockPtr                  $!lock_info         ;
	has ThreadAppProc            $!lock              ;
	has ThreadAppProc            $!unlock            ;
	has ThreadAppYieldLockProc   $!yield_lock        ;
	has ThreadAppRestoreLockProc $!restore_lock      ;
	has ThreadAppProc            $!free_lock         ;
}

class XtCallbackRec is repr<CStruct> is export {
	has XtCallbackProc $!callback;
	has XtPointer      $!closure ;
}

class XtCheckpointTokenRec is repr<CStruct> is export {
	has int     $!save_type           ;
	has int     $!interact_style      ;
	has Boolean $!shutdown            ;
	has Boolean $!fast                ;
	has Boolean $!cancel_shutdown     ;
	has int     $!phase               ;
	has int     $!interact_dialog_type;
	has Boolean $!request_cancel      ;
	has Boolean $!request_next_phase  ;
	has Boolean $!save_success        ;
	has int     $!type                ;
	has Widget  $!widget              ;
}

class XtDeviceRec is repr<CStruct> is export {
	has XtServerGrabRec  $!grab    ;
	has XtServerGrabType $!grabType;
}

class XtGrabExtRec is repr<CStruct> is export {
	has Mask   $!pKeyButMask   ;
	has Mask   $!pModifiersMask;
	has Window $!confineTo     ;
	has Cursor $!cursor        ;
}

class XtPerDisplayInputRec is repr<CStruct> is export {
	has XtGrabList  $!grabList     ;
	has XtDeviceRec $!keyboard     ;
	has XtDeviceRec $!pointer      ;
	has KeyCode     $!activatingKey;
	has Widget      $!trace        ;
	has int         $!traceDepth   ;
	has int         $!traceMax     ;
	has Widget      $!focusWidget  ;
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

class XtTMRec is repr<CStruct> is export {
	has XtTranslations $!translations ;
	has XtBoundActions $!proc_table   ;
	has _XtStateRec    $!current_state;
	has long           $!lastEventTime;
}

class XtransConnFd is repr<CStruct> is export {
	has _XtransConnFd $!next    ;
	has int           $!fd      ;
	has int           $!do_close;
}

class XtransConnInfo is repr<CStruct> is export {
	has _Xtransport   $!transptr   ;
	has int           $!index      ;
	has Str           $!priv       ;
	has int           $!flags      ;
	has int           $!fd         ;
	has Str           $!port       ;
	has int           $!family     ;
	has Str           $!addr       ;
	has int           $!addrlen    ;
	has Str           $!peeraddr   ;
	has int           $!peeraddrlen;
	has _XtransConnFd $!recv_fds   ;
	has _XtransConnFd $!send_fds   ;
}

class Xtransport_table is repr<CStruct> is export {
	has Xtransport $!transport   ;
	has int        $!transport_id;
}

class alternate is repr<CStruct> is export {
	has Bool $!subset;
	has Str  $!name  ;
}

class contextDataRec is repr<CStruct> is export {
	has Widget $!parent;
	has Widget $!ve    ;
}

class contextErrDataRec is repr<CStruct> is export {
	has Widget $!widget;
	has XIM    $!xim   ;
}

class internalCallbackRec is repr<CStruct> is export {
	has short $!count     ;
	has Str   $!is_padded ;
	has Str   $!call_state;
	has int   $!align_pad ;
}

class iovec is repr<CStruct> is export {
	has caddr_t $!iov_base;
	has int     $!iov_len ;
}

class tmask is repr<CStruct> is export {
	has Mask $!mask;
	has void $!dev ;
}

class xAnyClassinfo is repr<CStruct> is export {
	has CARD8 $!c_class;
	has CARD8 $!class  ;
	has CARD8 $!length ;
}

class xArc is repr<CStruct> is export {
	has INT16  $!x     ;
	has INT16  $!y     ;
	has CARD16 $!width ;
	has CARD16 $!height;
	has INT16  $!angle1;
	has INT16  $!angle2;
}

class xAxisInfo is repr<CStruct> is export {
	has CARD32 $!resolution;
	has CARD32 $!min_value ;
	has CARD32 $!max_value ;
}

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

class xPoint is repr<CStruct> is export {
	has INT16 $!x;
	has INT16 $!y;
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

class xRectangle is repr<CStruct> is export {
	has INT16  $!x     ;
	has INT16  $!y     ;
	has CARD16 $!width ;
	has CARD16 $!height;
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

class xSegment is repr<CStruct> is export {
	has INT16 $!x1;
	has INT16 $!y1;
	has INT16 $!x2;
	has INT16 $!y2;
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
	has _xthread_waiter $!next;
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
