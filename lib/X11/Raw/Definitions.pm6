use v6.c;

unit package XLib::Raw::Definitions;

constant x11                          is export = 'x11',v6;

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
