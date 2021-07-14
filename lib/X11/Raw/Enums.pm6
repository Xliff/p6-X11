use v6.c;

use X11::Raw::Definitions;

unit package X11::Raw::Enums;

constant XEventQueueOwner is export := CARD32;
our enum XEventQueueOwnerEnum is export (
  XlibOwnsEventQueue => 0,
  'XCBOwnsEventQueue'
);

constant DMXInputEnum is export := CARD32;
our enum DMXInputEnumEnum is export <
  DMXLocalInputType
  DMXConsoleInputType
  DMXBackendInputType
>;

constant EditResError is export := CARD32;
our enum EditResErrorEnum is export (
  PartialSuccess   => 0,
  Failure          => 1,
  ProtocolMismatch => 2,
);

constant EditresCommand is export := CARD32;
our enum EditresCommandEnum is export (
  SendWidgetTree => 0,
  SetValues      => 1,
  GetResources   => 2,
  GetGeometry    => 3,
  FindChild      => 4,
  GetValues      => 5,
);

constant FontEncoding is export := CARD32;
our enum FontEncodingEnum is export <
  Linear8Bit
  TwoD8Bit
  Linear16Bit
  TwoD16Bit
>;

constant IceAcceptStatus is export := CARD32;
our enum IceAcceptStatusEnum is export <
  IceAcceptSuccess
  IceAcceptFailure
  IceAcceptBadMalloc
>;

constant IceCloseStatus is export := CARD32;
our enum IceCloseStatusEnum is export <
  IceClosedNow
  IceClosedASAP
  IceConnectionInUse
  IceStartedShutdownNegotiation
>;

constant IceConnectStatus is export := CARD32;
our enum IceConnectStatusEnum is export <
  IceConnectPending
  IceConnectAccepted
  IceConnectRejected
  IceConnectIOError
>;

constant IcePaAuthStatus is export := CARD32;
our enum IcePaAuthStatusEnum is export <
  IcePaAuthContinue
  IcePaAuthAccepted
  IcePaAuthRejected
  IcePaAuthFailed
>;

constant IcePoAuthStatus is export := CARD32;
our enum IcePoAuthStatusEnum is export <
  IcePoAuthHaveReply
  IcePoAuthRejected
  IcePoAuthFailed
  IcePoAuthDoneCleanup
>;

constant IceProcessMessagesStatus is export := CARD32;
our enum IceProcessMessagesStatusEnum is export <
  IceProcessMessagesSuccess
  IceProcessMessagesIOError
  IceProcessMessagesConnectionClosed
>;

constant IceProtocolSetupStatus is export := CARD32;
our enum IceProtocolSetupStatusEnum is export <
  IceProtocolSetupSuccess
  IceProtocolSetupFailure
  IceProtocolSetupIOError
  IceProtocolAlreadyActive
>;

constant LayoutState is export := CARD32;
our enum LayoutStateEnum is export <
  LayoutPending
  LayoutInProgress
  LayoutDone
>;

constant ResourceType is export := CARD32;
our enum ResourceTypeEnum is export (
  NormalResource     => 0,
  ConstraintResource => 1,
);

constant SmcCloseStatus is export := CARD32;
our enum SmcCloseStatusEnum is export <
  SmcClosedNow
  SmcClosedASAP
  SmcConnectionInUse
>;

constant SyncCounterType is export := CARD32;
our enum SyncCounterTypeEnum is export <
  XSyncCounterNeverChanges
  XSyncCounterNeverIncreases
  XSyncCounterNeverDecreases
  XSyncCounterUnrestricted
>;

constant XICCEncodingStyle is export := CARD32;
our enum XICCEncodingStyleEnum is export <
  XStringStyle
  XCompoundTextStyle
  XTextStyle
  XStdICCTextStyle
  XUTF8StringStyle
>;

constant XIMCaretDirection is export := CARD32;
our enum XIMCaretDirectionEnum is export <
  XIMForwardChar
  XIMBackwardChar
  XIMForwardWord
  XIMBackwardWord
  XIMCaretUp
  XIMCaretDown
  XIMNextLine
  XIMPreviousLine
  XIMLineStart
  XIMLineEnd
  XIMAbsolutePosition
  XIMDontChange
>;

constant XIMCaretStyle is export := CARD32;
our enum XIMCaretStyleEnum is export <
  XIMIsInvisible
  XIMIsPrimary
  XIMIsSecondary
>;

constant XIMStatusDataType is export := CARD32;
our enum XIMStatusDataTypeEnum is export <
  XIMTextType
  XIMBitmapType
>;

constant XOrientation is export := CARD32;
our enum XOrientationEnum is export <
  XOMOrientation_LTR_TTB
  XOMOrientation_RTL_TTB
  XOMOrientation_TTB_LTR
  XOMOrientation_TTB_RTL
  XOMOrientation_Context
>;

constant XResClientIdType is export := CARD32;
our enum XResClientIdTypeEnum is export <
  XRES_CLIENT_ID_XID
  XRES_CLIENT_ID_PID
  XRES_CLIENT_ID_NR
>;

constant XResClientIdMask is export := CARD32;
our enum XResClientIdMaskEnum is export (
  XRES_CLIENT_ID_XID_MASK => 1 +< XRES_CLIENT_ID_XID,
  XRES_CLIENT_ID_PID_MASK => 1 +< XRES_CLIENT_ID_PID,
);

constant XSyncAlarmState is export := CARD32;
our enum XSyncAlarmStateEnum is export <
  XSyncAlarmActive
  XSyncAlarmInactive
  XSyncAlarmDestroyed
>;

constant XSyncTestType is export := CARD32;
our enum XSyncTestTypeEnum is export <
  XSyncPositiveTransition
  XSyncNegativeTransition
  XSyncPositiveComparison
  XSyncNegativeComparison
>;

constant XSyncValueType is export := CARD32;
our enum XSyncValueTypeEnum is export <
  XSyncAbsolute
  XSyncRelative
>;

constant XawAsciiType is export := CARD32;
our enum XawAsciiTypeEnum is export <
  XawAsciiFile
  XawAsciiString
>;

constant XawEdgeType is export := CARD32;
our enum XawEdgeTypeEnum is export <
  XawChainTop
  XawChainBottom
  XawChainLeft
  XawChainRight
  XawRubber
>;

constant XawTextEditType is export := CARD32;
our enum XawTextEditTypeEnum is export <
  XawtextRead
  XawtextAppend
  XawtextEdit
>;

constant XawTextInsertState is export := CARD32;
our enum XawTextInsertStateEnum is export <
  XawisOn
  XawisOff
>;

constant XawTextJustifyMode is export := CARD32;
our enum XawTextJustifyModeEnum is export <
  XawjustifyLeft
  XawjustifyRight
  XawjustifyCenter
  XawjustifyFull
>;

constant XawTextResizeMode is export := CARD32;
our enum XawTextResizeModeEnum is export <
  XawtextResizeNever
  XawtextResizeWidth
  XawtextResizeHeight
  XawtextResizeBoth
>;

constant XawTextScanDirection is export := CARD32;
our enum XawTextScanDirectionEnum is export <
  XawsdLeft
  XawsdRight
>;

constant XawTextScanType is export := CARD32;
our enum XawTextScanTypeEnum is export <
  XawstPositions
  XawstWhiteSpace
  XawstEOL
  XawstParagraph
  XawstAll
  XawstAlphaNumeric
>;

constant XawTextScrollMode is export := CARD32;
our enum XawTextScrollModeEnum is export <
  XawtextScrollNever
  XawtextScrollWhenNeeded
  XawtextScrollAlways
>;

constant XawTextSelectType is export := CARD32;
our enum XawTextSelectTypeEnum is export <
  XawselectNull
  XawselectPosition
  XawselectChar
  XawselectWord
  XawselectLine
  XawselectParagraph
  XawselectAll
  XawselectAlphaNumeric
>;

constant XawTextSelectionAction is export := CARD32;
our enum XawTextSelectionActionEnum is export <
  XawactionStart
  XawactionAdjust
  XawactionEnd
>;

constant XawTextSelectionMode is export := CARD32;
our enum XawTextSelectionModeEnum is export <
  XawsmTextSelect
  XawsmTextExtend
>;

constant XawTextWrapMode is export := CARD32;
our enum XawTextWrapModeEnum is export <
  XawtextWrapNever
  XawtextWrapLine
  XawtextWrapWord
>;

constant XctHDirection is export := CARD32;
our enum XctHDirectionEnum is export <
  XctUnspecified
  XctLeftToRight
  XctRightToLeft
>;

constant XctResult is export := CARD32;
our enum XctResultEnum is export <
  XctSegment
  XctC0Segment
  XctGLSegment
  XctC1Segment
  XctGRSegment
  XctExtendedSegment
  XctExtension
  XctHorizontal
  XctEndOfText
  XctError
>;

constant XrmBinding is export := CARD32;
our enum XrmBindingEnum is export <
  XrmBindTightly
  XrmBindLoosely
>;

constant XrmOptionKind is export := CARD32;
our enum XrmOptionKindEnum is export <
  XrmoptionNoArg
  XrmoptionIsArg
  XrmoptionStickyArg
  XrmoptionSepArg
  XrmoptionResArg
  XrmoptionSkipArg
  XrmoptionSkipLine
  XrmoptionSkipNArgs
>;

constant XtAddressMode is export := CARD32;
our enum XtAddressModeEnum is export <
  XtAddress
  XtBaseOffset
  XtImmediate
  XtResourceString
  XtResourceQuark
  XtWidgetBaseOffset
  XtProcedureArg
>;

constant XtCallbackStatus is export := CARD32;
our enum XtCallbackStatusEnum is export <
  XtCallbackNoList
  XtCallbackHasNone
  XtCallbackHasSome
>;

constant XtCommandHighlight is export := CARD32;
our enum XtCommandHighlightEnum is export <
  HighlightNone
  HighlightWhenUnset
  HighlightAlways
>;

constant XtGeometryResult is export := CARD32;
our enum XtGeometryResultEnum is export <
  XtGeometryYes
  XtGeometryNo
  XtGeometryAlmost
  XtGeometryDone
>;

constant XtGrabKind is export := CARD32;
our enum XtGrabKindEnum is export <
  XtGrabNone
  XtGrabNonexclusive
  XtGrabExclusive
>;

constant XtJustify is export := CARD32;
our enum XtJustifyEnum is export <
  XtJustifyLeft
  XtJustifyCenter
  XtJustifyRight
>;

constant XtListPosition is export := CARD32;
our enum XtListPositionEnum is export <
  XtListHead
  XtListTail
>;

constant XtOrientation is export := CARD32;
our enum XtOrientationEnum is export <
  XtorientHorizontal
  XtorientVertical
>;

constant XtServerGrabType is export := CARD32;
our enum XtServerGrabTypeEnum is export <
  XtNoServerGrab
  XtPassiveServerGrab
  XtActiveServerGrab
  XtPseudoPassiveServerGrab
  XtPseudoActiveServerGrab
>;

constant highlightType is export := CARD32;
our enum highlightTypeEnum is export <
  Normal
  Selected
>;

constant xdmOpCode is export := CARD32;
our enum xdmOpCodeEnum is export (
  BROADCAST_QUERY => 1,
  'QUERY',
  'INDIRECT_QUERY',
  'FORWARD_QUERY',
  'WILLING',
  'UNWILLING',
  'REQUEST',
  'ACCEPT',
  'DECLINE',
  'MANAGE',
  'REFUSE',
  'FAILED',
  'KEEPALIVE',
  'ALIVE'
);

constant xdmcp_states is export := CARD32;
our enum xdmcp_statesEnum is export <
  XDM_QUERY
  XDM_BROADCAST
  XDM_INDIRECT
  XDM_COLLECT_QUERY
  XDM_COLLECT_BROADCAST_QUERY
  XDM_COLLECT_INDIRECT_QUERY
  XDM_START_CONNECTION
  XDM_AWAIT_REQUEST_RESPONSE
  XDM_AWAIT_MANAGE_RESPONSE
  XDM_MANAGE
  XDM_RUN_SESSION
  XDM_OFF
  XDM_AWAIT_USER_INPUT
  XDM_KEEPALIVE
  XDM_AWAIT_ALIVE_RESPONSE
  XDM_MULTICAST
  XDM_COLLECT_MULTICAST_QUERY
  XDM_KEEP_ME_LAST
>;
