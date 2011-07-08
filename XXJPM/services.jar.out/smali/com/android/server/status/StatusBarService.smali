.class public Lcom/android/server/status/StatusBarService;
.super Landroid/app/IStatusBar$Stub;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarService$40;,
        Lcom/android/server/status/StatusBarService$UninstallReceiver;,
        Lcom/android/server/status/StatusBarService$BrightnessContentObserver;,
        Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;,
        Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;,
        Lcom/android/server/status/StatusBarService$DriveContentObserver;,
        Lcom/android/server/status/StatusBarService$OrientationContentObserver;,
        Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;,
        Lcom/android/server/status/StatusBarService$GpsContentObserver;,
        Lcom/android/server/status/StatusBarService$MyTicker;,
        Lcom/android/server/status/StatusBarService$Launcher;,
        Lcom/android/server/status/StatusBarService$H;,
        Lcom/android/server/status/StatusBarService$DataConnState;,
        Lcom/android/server/status/StatusBarService$ExpandedDialog;,
        Lcom/android/server/status/StatusBarService$NotificationCallbacks;,
        Lcom/android/server/status/StatusBarService$DisableRecord;,
        Lcom/android/server/status/StatusBarService$PendingOp;
    }
.end annotation


# static fields
.field static final ANIM_FRAME_DURATION:I = 0x10

.field private static final DATA_CONN_STATE_CHANGE_TIMEOUT:I = 0x2710

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final FMRADIO_LAUNCH_ACTION:Ljava/lang/String; = "com.android.fm.player"

.field private static final FMRADIO_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player.off"

.field private static final FMRADIO_ON_ACTION:Ljava/lang/String; = "com.android.fm.player.on"

.field private static final FMRADIO_TUNE_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player.tune.next"

.field private static final FMRADIO_TUNE_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player.tune.prev"

.field private static final FMRADIO_TURNED_OFF:Ljava/lang/String; = "com.android.fm.player.status.off"

.field private static final FMRADIO_TURNED_ON:Ljava/lang/String; = "com.android.fm.player.status.on"

.field private static final MAX_SCREEN_BRIGHTNESS:I = 0xff

.field private static final MIN_SCREEN_BRIGHTNESS:I = 0x1e

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_ANIMATE_REVEAL:I = 0x3e9

.field private static final MUSICPLAYER_FF_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_REW_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_STATE_CHANGED:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_STATE_EXTRA:Ljava/lang/String; = "playing"

.field private static final MUSICPLAYER_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final MUSIC_ALBUMART_URI_BASE:Ljava/lang/String; = "content://media/external/audio/albumart/"

.field private static final OP_ADD_ICON:I = 0x1

.field private static final OP_DISABLE:I = 0x7

.field private static final OP_EXPAND:I = 0x5

.field private static final OP_REMOVE_ICON:I = 0x3

.field private static final OP_SET_VISIBLE:I = 0x4

.field private static final OP_TOGGLE:I = 0x6

.field private static final OP_UPDATE_ICON:I = 0x2

.field private static final QUICKPANEL_BT:I = 0x2

.field private static final QUICKPANEL_CALL:I = 0x1

.field private static final QUICKPANEL_DATA:I = 0x16

.field private static final QUICKPANEL_GPS:I = 0x4

.field private static final QUICKPANEL_MUSIC:I = 0x2

.field private static final QUICKPANEL_NONE:I = 0x0

.field private static final QUICKPANEL_ORIENTATION:I = 0x10

.field private static final QUICKPANEL_RADIO:I = 0x8

.field private static final QUICKPANEL_RECORD:I = 0x4

.field private static final QUICKPANEL_SOUND:I = 0x8

.field private static final QUICKPANEL_WIFI:I = 0x1

.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final TEXT_COLOR_OFF:I = -0x383839

.field private static final TEXT_COLOR_ON:I = -0x1

.field static final TWDBG:Z = false

.field private static final VOICERECORDER_BUTTON_ACTION:Ljava/lang/String; = "com.samsung.sec.android.RecordReceiver"

.field private static final VOICERECORDER_BUTTON_FUNCTION:Ljava/lang/String; = "recordFunction"

.field private static final VOICERECORDER_BUTTON_LAUNCH:I = 0x5

.field private static final VOICERECORDER_BUTTON_PAUSE:I = 0x3

.field private static final VOICERECORDER_BUTTON_RESUME:I = 0x4

.field private static final VOICERECORDER_BUTTON_SAVE:I = 0x2

.field private static final VOICERECORDER_BUTTON_START:I = 0x1

.field private static final VOICERECORDER_STATE_CHANGED:Ljava/lang/String; = "com.android.notification.voicerecordcommand"

.field private static final VOICERECORDER_STATE_EXTRA_COMMAND_NAME:Ljava/lang/String; = "command"

.field private static final VOICERECORDER_STATE_EXTRA_FROM_NAME:Ljava/lang/String; = "from"

.field private static final VOICERECORDER_STATE_EXTRA_FROM_VALUE:Ljava/lang/String; = "com.sec.app.voicerecorder.activity"

.field private static final VOICERECORDER_STATE_IDLE:I = 0xc

.field private static final VOICERECORDER_STATE_PAUSE:I = 0xd

.field private static final VOICERECORDER_STATE_RECORD:I = 0xb

.field private static mIsAutoBrightness:Z


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBTBtn:Landroid/widget/TextView;

.field private mBTBtnClickListener:Landroid/view/View$OnClickListener;

.field mBTHeadsetReceiver:Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

.field mBTStatus:Z

.field mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallStatus:I

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/server/status/CloseDragHandle;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDataBtn:Landroid/widget/TextView;

.field private mDataBtnClickListener:Landroid/view/View$OnClickListener;

.field private mDataConnState:Lcom/android/server/status/StatusBarService$DataConnState;

.field private mDataConnStateChangeHandler:Landroid/os/Handler;

.field mDataStatus:Z

.field mDateView:Lcom/android/server/status/DateView;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mDriveObserver:Lcom/android/server/status/StatusBarService$DriveContentObserver;

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/server/status/ExpandedView;

.field mExpandedVisible:Z

.field mFFLongPressed:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGPSBtn:Landroid/widget/TextView;

.field private mGPSBtnClickListener:Landroid/view/View$OnClickListener;

.field mGPSStatus:Z

.field mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

.field private mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

.field mHandler:Lcom/android/server/status/StatusBarService$H;

.field mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIcons:Landroid/widget/LinearLayout;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mMiniCallVisible:Z

.field mMiniMusicVisible:Z

.field mMiniRadioVisible:Z

.field mMiniRecorderVisible:Z

.field mMoreIcon:Lcom/android/server/status/StatusBarIcon;

.field mMusicAlbumArtHeight:I

.field mMusicAlbumArtWidth:I

.field mMusicStatus:Z

.field private mNetworkModeChangedInitIntent:Landroid/content/Intent;

.field mNewBaseTime:J

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

.field mNotificationData:Lcom/android/server/status/NotificationViewList;

.field mNotificationIcons:Lcom/android/server/status/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOldBaseTime:J

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field mOrientationBtn:Landroid/widget/TextView;

.field private mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

.field mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

.field mOrientationStatus:Z

.field private mPanelSlightlyVisible:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPixelFormat:I

.field mPlmnLabel:Landroid/widget/TextView;

.field mPositionTmp:[I

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$PendingOp;",
            ">;"
        }
    .end annotation
.end field

.field mQueueLock:Ljava/lang/Object;

.field mQuickPanelContainer:Landroid/widget/LinearLayout;

.field mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

.field mREWLongPressed:Z

.field mRadioStatus:Z

.field mRecorderStatus:I

.field mRightIconSlots:[Ljava/lang/String;

.field mRightIcons:[Lcom/android/server/status/StatusBarIcon;

.field private mScreenBrightness:Landroid/widget/SeekBar;

.field mScrollView:Landroid/widget/ScrollView;

.field mSoundBtn:Landroid/widget/TextView;

.field private mSoundBtnClickListener:Landroid/view/View$OnClickListener;

.field mSoundObserver:Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;

.field mSoundProfile:I

.field mSpnLabel:Landroid/widget/TextView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/server/status/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mTTSWork:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTicker:Lcom/android/server/status/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/server/status/TrackingView;

.field mTts:Landroid/speech/tts/TextToSpeech;

.field mTtsListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

.field private mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field mWiFiBtn:Landroid/widget/TextView;

.field private mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

.field mWiFiStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 473
    invoke-direct {p0}, Landroid/app/IStatusBar$Stub;-><init>()V

    .line 299
    new-instance v0, Lcom/android/server/status/StatusBarService$H;

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Lcom/android/server/status/NotificationViewList;

    invoke-direct {v0}, Lcom/android/server/status/NotificationViewList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    .line 337
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    .line 368
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 370
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    .line 374
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 377
    new-instance v0, Lcom/android/server/status/StatusBarService$DriveContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$DriveContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDriveObserver:Lcom/android/server/status/StatusBarService$DriveContentObserver;

    .line 378
    new-instance v0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTHeadsetReceiver:Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

    .line 379
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 380
    new-instance v0, Lcom/android/server/status/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$1;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 397
    new-instance v0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    .line 398
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 399
    new-instance v0, Lcom/android/server/status/StatusBarService$2;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$2;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTtsListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 412
    new-instance v0, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    .line 433
    new-instance v0, Lcom/android/server/status/StatusBarService$GpsContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$GpsContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

    .line 440
    new-instance v0, Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mSoundObserver:Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;

    .line 443
    new-instance v0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$OrientationContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    .line 450
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    .line 451
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 452
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    .line 454
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    .line 455
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    .line 466
    iput-wide v5, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 467
    iput-wide v5, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    .line 495
    sget-object v0, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataConnState:Lcom/android/server/status/StatusBarService$DataConnState;

    .line 497
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mDataConnStateChangeHandler:Landroid/os/Handler;

    .line 499
    new-instance v0, Lcom/android/server/status/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$3;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

    .line 519
    new-instance v0, Lcom/android/server/status/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$4;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1297
    new-instance v0, Lcom/android/server/status/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$5;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2713
    new-instance v0, Lcom/android/server/status/StatusBarService$27;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$27;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3085
    new-instance v0, Lcom/android/server/status/StatusBarService$29;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$29;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 3092
    new-instance v0, Lcom/android/server/status/StatusBarService$30;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$30;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3489
    new-instance v0, Lcom/android/server/status/StatusBarService$31;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$31;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTTSWork:Ljava/lang/Runnable;

    .line 3647
    new-instance v0, Lcom/android/server/status/StatusBarService$32;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$32;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3687
    new-instance v0, Lcom/android/server/status/StatusBarService$33;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$33;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3721
    new-instance v0, Lcom/android/server/status/StatusBarService$34;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$34;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mGPSBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3731
    new-instance v0, Lcom/android/server/status/StatusBarService$35;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$35;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mSoundBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3765
    new-instance v0, Lcom/android/server/status/StatusBarService$36;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$36;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3773
    new-instance v0, Lcom/android/server/status/StatusBarService$37;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$37;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3908
    new-instance v0, Lcom/android/server/status/StatusBarService$38;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$38;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 3918
    new-instance v0, Lcom/android/server/status/StatusBarService$39;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$39;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    .line 474
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    .line 475
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 478
    new-instance v0, Lcom/android/server/status/StatusBarService$UninstallReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$UninstallReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    .line 482
    return-void
.end method

.method private ChronometerStart(I)V
    .locals 6
    .parameter "mask"

    .prologue
    .line 3971
    const/4 v1, 0x0

    .line 3973
    .local v1, viewGroup:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 3979
    :goto_0
    const v2, 0x2040059

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    .line 3981
    .local v0, timer:Landroid/widget/Chronometer;
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3982
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 3987
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 3988
    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 4005
    return-void

    .line 3975
    .end local v0           #timer:Landroid/widget/Chronometer;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204005a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #viewGroup:Landroid/view/ViewGroup;
    goto :goto_0

    .line 3984
    .restart local v0       #timer:Landroid/widget/Chronometer;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_1

    .line 3973
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private ChronometerStop(I)V
    .locals 4
    .parameter "mask"

    .prologue
    .line 4008
    const/4 v1, 0x0

    .line 4010
    .local v1, viewGroup:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 4016
    :goto_0
    const v2, 0x2040059

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    .line 4018
    .local v0, timer:Landroid/widget/Chronometer;
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 4019
    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 4027
    return-void

    .line 4012
    .end local v0           #timer:Landroid/widget/Chronometer;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204005a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #viewGroup:Landroid/view/ViewGroup;
    goto :goto_0

    .line 4010
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataConnState:Lcom/android/server/status/StatusBarService$DataConnState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->doFFLongPress()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mDataConnState:Lcom/android/server/status/StatusBarService$DataConnState;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/status/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarService;ILandroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateMusicStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/status/StatusBarService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateRadioIStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateRecorderStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/status/StatusBarService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/status/StatusBarService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/status/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->isHomeForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/status/StatusBarService;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->getIndex(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getContact(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/status/StatusBarService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/status/StatusBarService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateDataState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/status/StatusBarService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataConnStateChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/status/StatusBarService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->alwaysHandle(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->doREWLongPress()V

    return-void
.end method

.method private addPendingOp(II)V
    .locals 4
    .parameter "code"
    .parameter "integer"

    .prologue
    const/4 v3, 0x1

    .line 894
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 896
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 897
    iput p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 898
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 900
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 902
    :cond_0
    monitor-exit v1

    .line 903
    return-void

    .line 902
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V
    .locals 4
    .parameter "code"
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 868
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 869
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 870
    if-nez p3, :cond_1

    move-object v2, v3

    :goto_0
    iput-object v2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 871
    iput-object p4, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    .line 872
    iput p5, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 873
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 877
    :cond_0
    monitor-exit v1

    .line 878
    return-void

    .line 870
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v2

    goto :goto_0

    .line 877
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Z)V
    .locals 4
    .parameter "code"
    .parameter "key"
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    .line 881
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 883
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 884
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 885
    iput-boolean p3, v0, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 886
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 888
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 890
    :cond_0
    monitor-exit v1

    .line 891
    return-void

    .line 890
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private alwaysHandle(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1139
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcScreenBrightness(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    .line 4031
    const/high16 v1, 0x437f

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->floatValue()F

    move-result v2

    div-float v0, v1, v2

    .line 4032
    .local v0, propFactor:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1
.end method

.method private checkMinMax(I)I
    .locals 1
    .parameter "screenBrightness"

    .prologue
    .line 4036
    const/16 v0, 0x1e

    if-le v0, p1, :cond_1

    .line 4037
    const/16 p1, 0x1e

    .line 4042
    :cond_0
    :goto_0
    return p1

    .line 4038
    :cond_1
    const/16 v0, 0xff

    if-ge v0, p1, :cond_0

    .line 4039
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private doFFLongPress()V
    .locals 3

    .prologue
    .line 4119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mFFLongPressed:Z

    .line 4121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4122
    .local v0, longIntent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "quickpanel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4123
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4124
    return-void
.end method

.method private doREWLongPress()V
    .locals 3

    .prologue
    .line 4111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mREWLongPressed:Z

    .line 4113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4114
    .local v0, longIntent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "quickpanel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4115
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4116
    return-void
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method private getContact(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 1011
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v1, v1, Lcom/android/server/status/NotificationData;->contact:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCount(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 1006
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget v1, v1, Lcom/android/server/status/NotificationData;->missedCount:I

    return v1
.end method

.method private getHomeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3623
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3624
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3626
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getIndex(Ljava/lang/String;I)I
    .locals 4
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 969
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3}, Lcom/android/server/status/NotificationViewList;->latestCount()I

    move-result v1

    .line 970
    .local v1, size:I
    const/4 v2, 0x0

    .line 972
    .local v2, stn:Lcom/android/server/status/StatusBarNotification;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 973
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3, v0}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v2

    .line 975
    if-eqz v2, :cond_0

    .line 976
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v3, v3, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget v3, v3, Lcom/android/server/status/NotificationData;->id:I

    if-ne v3, p2, :cond_0

    move v3, v0

    .line 981
    :goto_1
    return v3

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getIntent(I)Landroid/app/PendingIntent;
    .locals 2
    .parameter "index"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 1016
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v1, v1, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private getMiniControllerVisiblility(I)I
    .locals 7
    .parameter "type"

    .prologue
    .line 2147
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x204002a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2148
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x2040030

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2149
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x204005a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2150
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x2040036

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2152
    .local v2, radio:Landroid/view/ViewGroup;
    const/16 v4, 0x8

    .line 2154
    .local v4, visibility:I
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 2155
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    .line 2166
    :cond_0
    :goto_0
    return v4

    .line 2157
    :cond_1
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    .line 2158
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0

    .line 2160
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_3

    .line 2161
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0

    .line 2163
    :cond_3
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_0

    .line 2164
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0
.end method

.method private getRightIconIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "slot"

    .prologue
    .line 958
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 959
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 960
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 964
    :goto_1
    return v2

    .line 959
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 991
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 992
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x1020040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 993
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 998
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x102005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 999
    .local v1, time:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 985
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 986
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 987
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hideCallOnGoingView()V
    .locals 3

    .prologue
    .line 4102
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    const v2, 0x204005c

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/CallOnGoingView;

    .line 4104
    .local v0, cogv:Lcom/android/server/status/CallOnGoingView;
    if-eqz v0, :cond_0

    .line 4105
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/server/status/StatusBarView;->removeView(Landroid/view/View;)V

    .line 4107
    :cond_0
    return-void
.end method

.method private initQuickPanelSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1379
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    .line 1382
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    .line 1385
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    .line 1387
    const-string v0, "ATL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1390
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataConnStateChangeHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1393
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataConnStateChangeHandler:Landroid/os/Handler;

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1396
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    .line 1397
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 1398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    .line 1399
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1400
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    const-string v1, "source"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1402
    :cond_2
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1410
    :goto_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    .line 1413
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    .line 1415
    invoke-direct {p0, v3}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1416
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1417
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1418
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1420
    return-void

    :cond_3
    move v0, v4

    .line 1396
    goto :goto_0

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/status/StatusBarService;->mSoundProfile:I

    .line 1406
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    goto :goto_1

    :cond_5
    move v0, v4

    .line 1410
    goto :goto_2

    :cond_6
    move v0, v4

    .line 1413
    goto :goto_3
.end method

.method private isHomeForeground()Z
    .locals 10

    .prologue
    const-string v9, "StatusBar"

    .line 3600
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->getHomeList()Ljava/util/List;

    move-result-object v2

    .line 3601
    .local v2, homeList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3603
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3604
    .local v6, runningAppInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3605
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3606
    const-string v7, "StatusBar"

    const-string v8, "mBTHeadsetReceiver-onReceive:Home"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    .line 3609
    const-string v7, "StatusBar"

    const-string v8, "mBTHeadsetReceiver-onReceive:Home:Foreground"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    const/4 v7, 0x1

    .line 3618
    .end local v0           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #homeList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #runningAppInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v7

    .line 3615
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3616
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "StatusBar"

    const-string v7, "mBTHeadsetReceiver-onReceive:Exception"

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isMiniControllerVisible()Z
    .locals 6

    .prologue
    .line 2136
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2137
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2138
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2139
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2140
    .local v2, radio:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2724
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2725
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 2726
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2728
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2292
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 2297
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 2299
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2300
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2301
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2302
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2303
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/status/ExpandedView;->requestFocus(I)Z

    .line 2304
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 2306
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-nez v0, :cond_2

    .line 2307
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2311
    :cond_2
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->isMiniControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const v13, 0x1080079

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    const-string v12, "StatusBar"

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 552
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1070009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    .line 553
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Lcom/android/server/status/StatusBarIcon;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    .line 556
    const v7, 0x203000e

    invoke-static {p1, v7, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/status/ExpandedView;

    .line 558
    .local v1, expanded:Lcom/android/server/status/ExpandedView;
    iput-object p0, v1, Lcom/android/server/status/ExpandedView;->mService:Lcom/android/server/status/StatusBarService;

    .line 559
    const v7, 0x1090061

    invoke-static {p1, v7, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/status/StatusBarView;

    .line 561
    .local v5, sb:Lcom/android/server/status/StatusBarView;
    iput-object p0, v5, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    .line 564
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 565
    invoke-virtual {v5}, Lcom/android/server/status/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 566
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 570
    :cond_0
    iput-object v5, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 571
    const v7, 0x1020201

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 572
    const v7, 0x1020200

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/IconMerger;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    .line 573
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iput-object p0, v7, Lcom/android/server/status/IconMerger;->service:Lcom/android/server/status/StatusBarService;

    .line 574
    const v7, 0x10201ff

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 575
    const v7, 0x1020202

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    .line 576
    const v7, 0x102005a

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/DateView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    .line 578
    new-instance v7, Lcom/android/server/status/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/server/status/StatusBarService$ExpandedDialog;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 579
    iput-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    .line 580
    const v7, 0x2040048

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    .line 581
    const v7, 0x204004a

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 582
    const v7, 0x204004b

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 583
    const v7, 0x204004c

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 584
    const v7, 0x204004d

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 585
    const v7, 0x2040049

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 586
    const v7, 0x204004e

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 587
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v7, 0x2040055

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    .line 589
    const v7, 0x2040054

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    .line 590
    const v7, 0x2040047

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 591
    const v7, 0x2040048

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 593
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    new-instance v7, Lcom/android/server/status/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v5}, Lcom/android/server/status/StatusBarService$MyTicker;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    .line 598
    const v7, 0x1020204

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/TickerView;

    .line 599
    .local v6, tickerView:Lcom/android/server/status/TickerView;
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    iput-object v7, v6, Lcom/android/server/status/TickerView;->mTicker:Lcom/android/server/status/Ticker;

    .line 602
    const v7, 0x2030010

    invoke-static {p1, v7, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/TrackingView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    .line 604
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iput-object p0, v7, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    .line 607
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const v8, 0x2040050

    invoke-virtual {v7, v8}, Lcom/android/server/status/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/CloseDragHandle;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    .line 608
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iput-object p0, v7, Lcom/android/server/status/CloseDragHandle;->mService:Lcom/android/server/status/StatusBarService;

    .line 610
    const v7, 0x105000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2a

    invoke-static {v11, v7, v13, v9, v8}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    .line 615
    .local v3, moreData:Lcom/android/server/status/IconData;
    new-instance v7, Lcom/android/server/status/StatusBarIcon;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-direct {v7, p1, v3, v8}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 616
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v7, v7, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setId(I)V

    .line 617
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iput-object v8, v7, Lcom/android/server/status/IconMerger;->moreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 618
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v8, v8, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;)V

    .line 621
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 622
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 625
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v8, 0x104029f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 626
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    const v7, 0x1020205

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    .line 632
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 633
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/16 v8, 0xe1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 637
    const v7, 0x2040041

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelContainer:Landroid/widget/LinearLayout;

    .line 638
    const v7, 0x2040040

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    .line 640
    const v7, 0x2040042

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    .line 641
    const v7, 0x2040043

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    .line 642
    const v7, 0x204005b

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    .line 644
    const v7, 0x204005f

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    .line 647
    const-string v7, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeStatusBarView csc code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v7, "ATL"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 649
    const-string v7, "StatusBar"

    const-string v7, "data case"

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const v7, 0x2040060

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    .line 651
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mDataBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    :goto_0
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mBTBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mGPSBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelCallView()V

    .line 669
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelMusicView()V

    .line 670
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelRecordView()V

    .line 671
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelRadioView()V

    .line 675
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 676
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v7, "com.android.notification.voicerecordcommand"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v7, "com.android.fm.player.status.on"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v7, "com.android.fm.player.status.off"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v7, "android.intent.action.NETWORK_MODE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 711
    return-void

    .line 654
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v7, "StatusBar"

    const-string v7, "music case"

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const v7, 0x2040045

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mSoundBtn:Landroid/widget/TextView;

    .line 656
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSoundBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSoundBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mSoundBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private prepareQuickPanelSettingIcon(I)V
    .locals 5
    .parameter "mask"

    .prologue
    .line 1452
    const/4 v2, 0x0

    .line 1453
    .local v2, textColor:I
    const/4 v0, 0x0

    .line 1454
    .local v0, btnTextView:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 1456
    .local v1, settingIcon:Landroid/graphics/drawable/Drawable;
    sparse-switch p1, :sswitch_data_0

    .line 1546
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateQuickPanelSettingIcon(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 1547
    return-void

    .line 1458
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    .line 1460
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    if-eqz v3, :cond_0

    .line 1461
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1462
    const/4 v2, -0x1

    goto :goto_0

    .line 1464
    :cond_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1465
    const v2, -0x383839

    .line 1467
    goto :goto_0

    .line 1470
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    .line 1472
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    if-eqz v3, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1474
    const/4 v2, -0x1

    goto :goto_0

    .line 1476
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1477
    const v2, -0x383839

    .line 1479
    goto :goto_0

    .line 1482
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    .line 1484
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    if-eqz v3, :cond_2

    .line 1485
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1486
    const/4 v2, -0x1

    goto :goto_0

    .line 1488
    :cond_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1489
    const v2, -0x383839

    .line 1491
    goto :goto_0

    .line 1494
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mSoundBtn:Landroid/widget/TextView;

    .line 1496
    iget v3, p0, Lcom/android/server/status/StatusBarService;->mSoundProfile:I

    if-nez v3, :cond_3

    .line 1497
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1498
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1499
    :cond_3
    iget v3, p0, Lcom/android/server/status/StatusBarService;->mSoundProfile:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1500
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1501
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1503
    :cond_4
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1504
    const v2, -0x383839

    .line 1506
    goto/16 :goto_0

    .line 1509
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    .line 1511
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    if-eqz v3, :cond_5

    .line 1512
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1513
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1515
    :cond_5
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1516
    const v2, -0x383839

    .line 1518
    goto/16 :goto_0

    .line 1521
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    .line 1523
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    if-eqz v3, :cond_6

    .line 1524
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1525
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1527
    :cond_6
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1528
    const v2, -0x383839

    goto/16 :goto_0

    .line 1456
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_5
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1424
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1427
    const-string v0, "ATL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSoundObserver:Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1443
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1447
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1448
    return-void
.end method

.method private setAreThereNotifications()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2271
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 2272
    .local v1, ongoing:Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 2274
    .local v0, latest:Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2}, Lcom/android/server/status/NotificationViewList;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2275
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2280
    :goto_2
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2281
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2283
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 2284
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2288
    :goto_5
    return-void

    .end local v0           #latest:Z
    .end local v1           #ongoing:Z
    :cond_1
    move v1, v4

    .line 2271
    goto :goto_0

    .restart local v1       #ongoing:Z
    :cond_2
    move v0, v4

    .line 2272
    goto :goto_1

    .line 2277
    .restart local v0       #latest:Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v5

    .line 2280
    goto :goto_3

    :cond_5
    move v3, v5

    .line 2281
    goto :goto_4

    .line 2286
    :cond_6
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private setupQuickPanelCallView()V
    .locals 9

    .prologue
    .line 1563
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v8, 0x204002a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1564
    .local v0, call:Landroid/view/ViewGroup;
    const v7, 0x2040051

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1565
    .local v5, typeButton:Landroid/widget/Button;
    const v7, 0x204002b

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1566
    .local v2, muteButton:Landroid/widget/Button;
    const v7, 0x2040052

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1567
    .local v6, unholdButton:Landroid/widget/Button;
    const v7, 0x204002c

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1568
    .local v3, speakerButton:Landroid/widget/Button;
    const v7, 0x204002d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1569
    .local v1, endButton:Landroid/widget/Button;
    const v7, 0x2040059

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Chronometer;

    .line 1572
    .local v4, timer:Landroid/widget/Chronometer;
    new-instance v7, Lcom/android/server/status/StatusBarService$6;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$6;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    new-instance v7, Lcom/android/server/status/StatusBarService$7;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$7;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    new-instance v7, Lcom/android/server/status/StatusBarService$8;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$8;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1634
    new-instance v7, Lcom/android/server/status/StatusBarService$9;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$9;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    new-instance v7, Lcom/android/server/status/StatusBarService$10;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$10;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    return-void
.end method

.method private setupQuickPanelMusicView()V
    .locals 9

    .prologue
    .line 1731
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v8, 0x2040030

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1732
    .local v3, music:Landroid/view/ViewGroup;
    const v7, 0x2040053

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1733
    .local v2, launchButton:Landroid/widget/Button;
    const v7, 0x2040031

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1734
    .local v6, rewButton:Landroid/widget/Button;
    const v7, 0x2040032

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1735
    .local v5, playButton:Landroid/widget/Button;
    const v7, 0x2040033

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1736
    .local v4, pauseButton:Landroid/widget/Button;
    const v7, 0x2040034

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1739
    .local v0, ffButton:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1740
    .local v1, l_d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    .line 1741
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    .line 1743
    new-instance v7, Lcom/android/server/status/StatusBarService$11;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$11;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    new-instance v7, Lcom/android/server/status/StatusBarService$12;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$12;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1770
    new-instance v7, Lcom/android/server/status/StatusBarService$13;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$13;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1796
    new-instance v7, Lcom/android/server/status/StatusBarService$14;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$14;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1803
    new-instance v7, Lcom/android/server/status/StatusBarService$15;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$15;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1810
    new-instance v7, Lcom/android/server/status/StatusBarService$16;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$16;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1823
    new-instance v7, Lcom/android/server/status/StatusBarService$17;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$17;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1848
    return-void
.end method

.method private setupQuickPanelRadioView()V
    .locals 8

    .prologue
    .line 2019
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x2040036

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2020
    .local v4, radio:Landroid/view/ViewGroup;
    const v6, 0x2040056

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2021
    .local v1, launchButton:Landroid/widget/Button;
    const v6, 0x2040037

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2022
    .local v5, rewButton:Landroid/widget/Button;
    const v6, 0x2040038

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2023
    .local v3, playButton:Landroid/widget/Button;
    const v6, 0x2040039

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2024
    .local v2, pauseButton:Landroid/widget/Button;
    const v6, 0x204003a

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2026
    .local v0, ffButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/server/status/StatusBarService$22;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$22;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2035
    new-instance v6, Lcom/android/server/status/StatusBarService$23;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$23;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2042
    new-instance v6, Lcom/android/server/status/StatusBarService$24;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$24;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2051
    new-instance v6, Lcom/android/server/status/StatusBarService$25;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$25;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2060
    new-instance v6, Lcom/android/server/status/StatusBarService$26;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$26;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2066
    return-void
.end method

.method private setupQuickPanelRecordView()V
    .locals 8

    .prologue
    .line 1897
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x204005a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1898
    .local v2, record:Landroid/view/ViewGroup;
    const v6, 0x2040057

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1899
    .local v0, launchButton:Landroid/widget/Button;
    const v6, 0x204003d

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1900
    .local v3, recordButton:Landroid/widget/Button;
    const v6, 0x204003e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1901
    .local v1, pauseButton:Landroid/widget/Button;
    const v6, 0x2040058

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1902
    .local v4, saveButton:Landroid/widget/Button;
    const v6, 0x2040059

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Chronometer;

    .line 1904
    .local v5, timer:Landroid/widget/Chronometer;
    new-instance v6, Lcom/android/server/status/StatusBarService$18;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$18;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1923
    new-instance v6, Lcom/android/server/status/StatusBarService$19;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$19;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1940
    new-instance v6, Lcom/android/server/status/StatusBarService$20;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$20;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1953
    new-instance v6, Lcom/android/server/status/StatusBarService$21;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$21;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1960
    return-void
.end method

.method private showCallOnGoingView(J)V
    .locals 4
    .parameter "callDurationBaseTime"

    .prologue
    .line 4092
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x2030012

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/CallOnGoingView;

    .line 4094
    .local v0, cogv:Lcom/android/server/status/CallOnGoingView;
    if-eqz v0, :cond_0

    .line 4095
    iput-object p0, v0, Lcom/android/server/status/CallOnGoingView;->mService:Lcom/android/server/status/StatusBarService;

    .line 4096
    invoke-virtual {v0, p1, p2}, Lcom/android/server/status/CallOnGoingView;->setDurationBaseTime(J)V

    .line 4097
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/server/status/StatusBarView;->addView(Landroid/view/View;)V

    .line 4099
    :cond_0
    return-void
.end method

.method private showPreviousMiniController()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2111
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2112
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2113
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2114
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2116
    .local v2, radio:Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    if-eqz v4, :cond_0

    .line 2117
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2120
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    if-eqz v4, :cond_1

    .line 2121
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2124
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    if-eqz v4, :cond_2

    .line 2125
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2128
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    if-eqz v4, :cond_3

    .line 2129
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2131
    :cond_3
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 3193
    const/4 v0, 0x1

    .line 3194
    .local v0, needUpdate:Z
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3196
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v2, v1, :cond_1

    .line 3197
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    .line 3204
    :goto_0
    if-eqz v0, :cond_0

    .line 3205
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const v3, 0x2080005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3206
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3207
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 3209
    :cond_0
    return-void

    .line 3198
    :cond_1
    const/16 v2, 0xa

    if-ne v2, v1, :cond_2

    .line 3199
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    goto :goto_0

    .line 3201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final updateDataState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 3186
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    .line 3187
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const v1, 0x2080020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3188
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3189
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 3190
    return-void
.end method

.method private updateMiniControllerVisibility(IZ)V
    .locals 8
    .parameter "mask"
    .parameter "visible"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2097
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2098
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2099
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2100
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2102
    .local v2, radio:Landroid/view/ViewGroup;
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    move v4, v6

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2103
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    move v4, v6

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2104
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2105
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    move v4, v6

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2106
    return-void

    :cond_0
    move v4, v7

    .line 2102
    goto :goto_0

    :cond_1
    move v4, v7

    .line 2103
    goto :goto_1

    :cond_2
    move v4, v7

    .line 2104
    goto :goto_2

    :cond_3
    move v4, v7

    .line 2105
    goto :goto_3
.end method

.method private final updateMusicStatus(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const-string v13, "StatusBar"

    .line 3216
    const-string v0, "playing"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 3217
    .local v12, isMusicOn:Z
    const-string v0, "mediauri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3218
    .local v1, mediaUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 3219
    const-string v0, "StatusBar"

    const-string v0, "updateMusicStatus : Ignore invalid music status : no mediaUri "

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :goto_0
    return-void

    .line 3223
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3225
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3226
    .local v9, albumTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3227
    .local v7, albumArtist:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3230
    .local v8, albumId:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3231
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    :try_start_1
    const-string v0, "title"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3234
    const-string v0, "artist"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3235
    const-string v0, "album_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 3239
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3243
    :cond_1
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/server/status/StatusBarService;->getAlbumArtBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3248
    .local v6, albumArt:Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    if-eq v0, v12, :cond_2

    .line 3249
    iput-boolean v12, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    .line 3250
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicIconVisibility()V

    .line 3253
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicViewContent(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3257
    .end local v6           #albumArt:Landroid/graphics/Bitmap;
    .end local v7           #albumArtist:Ljava/lang/String;
    .end local v8           #albumId:Ljava/lang/String;
    .end local v9           #albumTitle:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 3258
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicStatus : Fail to query media uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3236
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #albumArtist:Ljava/lang/String;
    .restart local v8       #albumId:Ljava/lang/String;
    .restart local v9       #albumTitle:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 3237
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3239
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private updateQuickPanelCallView(Lcom/android/server/status/NotificationData;)V
    .locals 14
    .parameter "data"

    .prologue
    const-string v13, "StatusBar"

    .line 1683
    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v12, 0x204002a

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1684
    .local v0, call:Landroid/view/ViewGroup;
    const v11, 0x2040051

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1685
    .local v9, typeButton:Landroid/widget/Button;
    const v11, 0x204002b

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1686
    .local v6, muteButton:Landroid/widget/Button;
    const v11, 0x2040052

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1687
    .local v10, unholdButton:Landroid/widget/Button;
    const v11, 0x204002c

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1688
    .local v7, speakerButton:Landroid/widget/Button;
    const v11, 0x204002d

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1689
    .local v3, endButton:Landroid/widget/Button;
    const v11, 0x2040059

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Chronometer;

    .line 1692
    .local v8, timer:Landroid/widget/Chronometer;
    const-wide/high16 v1, -0x8000

    .line 1693
    .local v1, callDurationBaseTime:J
    :try_start_0
    const-string v11, "phoneext"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    .line 1695
    .local v5, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v5, :cond_3

    .line 1696
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephonyExt;->getActiveCallsCount()I

    move-result v11

    if-nez v11, :cond_1

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephonyExt;->getHoldCallsCount()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 1697
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1698
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1699
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1706
    :goto_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephonyExt;->getCallBaseTime()J

    move-result-wide v1

    .line 1707
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-lez v11, :cond_2

    .line 1708
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1709
    invoke-virtual {v8, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1710
    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    .line 1713
    invoke-direct {p0, v1, v2}, Lcom/android/server/status/StatusBarService;->showCallOnGoingView(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    .end local v5           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_1
    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    if-eqz v11, :cond_0

    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 1726
    const v11, 0x204002e

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    :cond_0
    return-void

    .line 1701
    .restart local v5       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    .restart local p0
    :cond_1
    const/16 v11, 0x8

    :try_start_1
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1702
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1703
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1721
    .end local v5           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1722
    .local v4, ex:Landroid/os/RemoteException;
    const-string v11, "StatusBar"

    const-string v11, "RemoteException from getPhoneInterface()"

    invoke-static {v13, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1715
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v5       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_2
    const/4 v11, 0x4

    :try_start_2
    invoke-virtual {v8, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1716
    invoke-virtual {v8}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    .line 1719
    :cond_3
    const-string v11, "StatusBar"

    const-string v12, "failed to get ITelephony interface"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private updateQuickPanelMusicIconVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1864
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v4, 0x2040030

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1865
    .local v0, music:Landroid/view/ViewGroup;
    const v3, 0x2040032

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1866
    .local v2, playButton:Landroid/widget/Button;
    const v3, 0x2040033

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1868
    .local v1, pauseButton:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    if-eqz v3, :cond_0

    .line 1869
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1870
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1875
    :goto_0
    return-void

    .line 1872
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1873
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateQuickPanelMusicView(Lcom/android/server/status/NotificationData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicIconVisibility()V

    .line 1861
    return-void
.end method

.method private updateQuickPanelMusicViewContent(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "description"
    .parameter "albumArt"

    .prologue
    .line 1879
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1880
    .local v3, music:Landroid/view/ViewGroup;
    if-eqz p1, :cond_0

    .line 1881
    const v4, 0x2040035

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1882
    .local v1, desc:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1885
    .end local v1           #desc:Landroid/widget/TextView;
    :cond_0
    const v4, 0x2040053

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1886
    .local v2, launchButton:Landroid/widget/Button;
    if-eqz p2, :cond_1

    .line 1887
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1888
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1892
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 1890
    :cond_1
    const v4, 0x20200b0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateQuickPanelRadioIcon()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2078
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v4, 0x2040036

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2079
    .local v2, radio:Landroid/view/ViewGroup;
    const v3, 0x2040038

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2080
    .local v1, playButton:Landroid/widget/Button;
    const v3, 0x2040039

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2083
    .local v0, pauseButton:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    if-eqz v3, :cond_0

    .line 2084
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2085
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2091
    :goto_0
    return-void

    .line 2087
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2088
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateQuickPanelRadioView(Lcom/android/server/status/NotificationData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioIcon()V

    .line 2071
    iget-object v1, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v2, 0x2040036

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2073
    .local v0, radio:Landroid/view/ViewGroup;
    const v1, 0x204003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    .end local v0           #radio:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private updateQuickPanelResources()V
    .locals 11

    .prologue
    .line 3851
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080004

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3852
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080005

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3853
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x208001d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3854
    const-string v8, "ATL"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3855
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080020

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3859
    :goto_0
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x208001f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3864
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v9, 0x204002a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3865
    .local v0, call:Landroid/view/ViewGroup;
    const v8, 0x204002b

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3866
    .local v2, muteButton:Landroid/widget/Button;
    const v8, 0x2040052

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 3867
    .local v7, unholdButton:Landroid/widget/Button;
    const v8, 0x204002c

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3868
    .local v6, speakerButton:Landroid/widget/Button;
    const v8, 0x204002d

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3870
    .local v1, endButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3871
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x208000f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3872
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080009

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3873
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x208000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3876
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v9, 0x204005a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 3877
    .local v3, record:Landroid/view/ViewGroup;
    const v8, 0x204003d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3878
    .local v4, recordButton:Landroid/widget/Button;
    const v8, 0x2040058

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 3880
    .local v5, saveButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080016

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3881
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3883
    return-void

    .line 3857
    .end local v0           #call:Landroid/view/ViewGroup;
    .end local v1           #endButton:Landroid/widget/Button;
    .end local v2           #muteButton:Landroid/widget/Button;
    .end local v3           #record:Landroid/view/ViewGroup;
    .end local v4           #recordButton:Landroid/widget/Button;
    .end local v5           #saveButton:Landroid/widget/Button;
    .end local v6           #speakerButton:Landroid/widget/Button;
    .end local v7           #unholdButton:Landroid/widget/Button;
    :cond_0
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mSoundBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080007

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateQuickPanelSettingIcon(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "btnText"
    .parameter "settingIcon"
    .parameter "textColor"

    .prologue
    const/4 v2, 0x0

    .line 1551
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1552
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1553
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1554
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1556
    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1557
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1558
    return-void
.end method

.method private updateQuickPanelVoiceRecordIcon()V
    .locals 11

    .prologue
    const/high16 v10, 0x205

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1967
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x204005a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1968
    .local v2, record:Landroid/view/ViewGroup;
    const v6, 0x204003d

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1969
    .local v3, recordButton:Landroid/widget/Button;
    const v6, 0x204003e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1970
    .local v1, pauseButton:Landroid/widget/Button;
    const v6, 0x2040058

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1971
    .local v4, saveButton:Landroid/widget/Button;
    const v6, 0x204003f

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1972
    .local v0, description:Landroid/widget/TextView;
    const v6, 0x2040059

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Chronometer;

    .line 1974
    .local v5, timer:Landroid/widget/Chronometer;
    iget v6, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    packed-switch v6, :pswitch_data_0

    .line 2008
    :pswitch_0
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 2009
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2010
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2011
    const v6, 0x2080019

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2012
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2013
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 2016
    :goto_0
    return-void

    .line 1981
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1982
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1983
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1984
    const v6, 0x2080016

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1985
    const/high16 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1986
    invoke-virtual {v5, v8}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 1994
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1995
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1996
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1997
    const v6, 0x2080018

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1998
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1999
    invoke-virtual {v5, v8}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 1974
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateQuickPanelVoiceRecordView(Lcom/android/server/status/NotificationData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1963
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordIcon()V

    .line 1964
    return-void
.end method

.method private final updateRadioIStatus(Z)V
    .locals 1
    .parameter "isRadioOn"

    .prologue
    .line 3363
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    if-eq v0, p1, :cond_0

    .line 3364
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    .line 3365
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioIcon()V

    .line 3367
    :cond_0
    return-void
.end method

.method private final updateRecorderStatus(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/16 v2, 0xc

    const/4 v4, 0x4

    .line 3329
    const-string v1, "command"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3332
    .local v0, currentStatus:I
    packed-switch v0, :pswitch_data_0

    .line 3348
    :pswitch_0
    iput v2, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3350
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStop(I)V

    .line 3351
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 3355
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    if-eqz v1, :cond_0

    .line 3356
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordIcon()V

    .line 3358
    :cond_0
    return-void

    .line 3334
    :pswitch_1
    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3335
    const-string v1, "currentTime"

    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    .line 3336
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStart(I)V

    goto :goto_0

    .line 3341
    :pswitch_2
    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3343
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStop(I)V

    goto :goto_0

    .line 3332
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenBrightness(I)V
    .locals 1
    .parameter "screenBrightness"

    .prologue
    .line 4059
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4060
    return-void
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 3167
    const/4 v0, 0x1

    .line 3168
    .local v0, needUpdate:Z
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3170
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 3171
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    .line 3178
    :goto_0
    if-eqz v0, :cond_0

    .line 3179
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const v3, 0x2080004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3180
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3181
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 3183
    :cond_0
    return-void

    .line 3172
    :cond_1
    if-ne v4, v1, :cond_2

    .line 3173
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    goto :goto_0

    .line 3175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 740
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 741
    return-void
.end method

.method public addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;
    .locals 7
    .parameter "data"
    .parameter "n"

    .prologue
    const-string v5, "\'"

    .line 843
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 844
    iget-object v0, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v6

    .line 845
    .local v6, slot:I
    if-gez v6, :cond_2

    .line 846
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 850
    .end local v6           #slot:I
    :cond_1
    const/4 v6, -0x1

    .line 852
    .restart local v6       #slot:I
    :cond_2
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 853
    .local v2, key:Landroid/os/IBinder;
    const/4 v1, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 854
    return-object v2
.end method

.method public addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;
    .locals 2
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 772
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method addNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .locals 6
    .parameter "notification"

    .prologue
    .line 2171
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2172
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assertion failed: notification.view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2176
    :cond_0
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v3, v3, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    .line 2178
    .local v2, parent:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/status/StatusBarService;->makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2179
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_2

    .line 2194
    :goto_1
    return-void

    .line 2176
    .end local v0           #child:Landroid/view/View;
    .end local v2           #parent:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    goto :goto_0

    .line 2183
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #parent:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3, p1}, Lcom/android/server/status/NotificationViewList;->getExpandedIndex(Lcom/android/server/status/StatusBarNotification;)I

    move-result v1

    .line 2186
    .local v1, index:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3}, Lcom/android/server/status/NotificationViewList;->ongoingCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 2187
    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    .line 2188
    add-int/lit8 v1, v1, -0x1

    .line 2193
    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2341
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v1, :cond_0

    .line 2356
    :goto_0
    return-void

    .line 2346
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 2347
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v0, v1

    .line 2353
    .local v0, y:I
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 2354
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2355
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 2349
    .end local v0           #y:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sub-int v0, v1, v2

    .restart local v0       #y:I
    goto :goto_1
.end method

.method animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2320
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2329
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 2327
    invoke-virtual {p0, v1, v2}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2328
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 745
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 746
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 755
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->gatherDisableActionsLocked()I

    move-result v0

    .line 764
    .local v0, net:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v3, v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onSetDisabled(I)V

    .line 765
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    const/4 v2, 0x7

    :try_start_2
    invoke-direct {p0, v2, v0}, Lcom/android/server/status/StatusBarService;->addPendingOp(II)V

    .line 767
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 768
    return-void

    .line 765
    .end local v0           #net:I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 767
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2414
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 2419
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 2421
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2422
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performExpand()V

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2425
    :cond_1
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2427
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2428
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 2432
    :cond_2
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2433
    iget-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2434
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 2459
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 2460
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 2462
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 2463
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2464
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2466
    :cond_1
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2467
    iget-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2468
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2737
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 2739
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    :goto_0
    return-void

    .line 2745
    :cond_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2746
    :try_start_0
    const-string v10, "Current Status Bar state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpanded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mExpandedVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTicking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2750
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTracking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2751
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mAnimating="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimVel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimAccel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurAnimationTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimLastTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2756
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimatingReveal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mViewDelta="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2759
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2760
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2761
    .local v0, N:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mQueue.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2763
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 2764
    .local v7, op:Lcom/android/server/status/StatusBarService$PendingOp;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " visible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           iconData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           notificationData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2769
    .end local v7           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedDialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2777
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mNoNotificationsTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCloseView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2780
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTickerView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2781
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScrollView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scroll "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2783
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNotificationLinearLayout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 2786
    :try_start_1
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mIconMap.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2789
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 2790
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 2791
    .local v4, key:Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarIcon;

    .line 2792
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2794
    add-int/lit8 v1, v1, 0x1

    .line 2795
    goto :goto_2

    .line 2784
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v4           #key:Landroid/os/IBinder;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 2796
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2797
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v9

    .line 2798
    :try_start_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->ongoingCount()I

    move-result v0

    .line 2799
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2801
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getOngoing(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 2802
    .local v6, n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2800
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2796
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :catchall_1
    move-exception v10

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    .line 2805
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_3
    :try_start_6
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->latestCount()I

    move-result v0

    .line 2806
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 2808
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 2809
    .restart local v6       #n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2812
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :cond_4
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2813
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 2814
    :try_start_7
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2815
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisableRecords.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDisabled=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 2818
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 2819
    .local v8, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] what=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2817
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2812
    .end local v8           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_2
    move-exception v10

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v10

    .line 2822
    :cond_5
    :try_start_9
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v10
.end method

.method gatherDisableActionsLocked()I
    .locals 4

    .prologue
    .line 948
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 950
    .local v0, N:I
    const/4 v2, 0x0

    .line 951
    .local v2, net:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 952
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    iget v3, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    or-int/2addr v2, v3

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    :cond_0
    return v2
.end method

.method getAlbumArtBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "albumId"

    .prologue
    .line 3267
    const/4 v0, 0x0

    .line 3268
    .local v0, albumArt:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 3269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://media/external/audio/albumart/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3270
    .local v3, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 3272
    .local v7, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 3277
    :goto_0
    if-eqz v7, :cond_0

    .line 3278
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3279
    .local v2, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3280
    const/4 v9, 0x0

    invoke-static {v7, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3281
    .local v1, b:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3282
    const/4 v7, 0x0

    .line 3284
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v9, :cond_0

    .line 3285
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    mul-int/lit8 v10, v10, 0x2

    div-int v8, v9, v10

    .line 3286
    .local v8, wx:I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int v5, v9, v10

    .line 3287
    .local v5, hx:I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3289
    .local v6, inSampleSize:I
    const/4 v9, 0x0

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3290
    const/4 v9, 0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3296
    :try_start_2
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 3299
    :goto_1
    const/4 v9, 0x0

    :try_start_3
    invoke-static {v7, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3300
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3301
    const/4 v7, 0x0

    .line 3302
    if-eqz v1, :cond_0

    .line 3303
    iget v9, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 3310
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #hx:I
    .end local v6           #inSampleSize:I
    .end local v8           #wx:I
    :cond_0
    if-eqz v7, :cond_1

    .line 3312
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3316
    :goto_2
    const/4 v7, 0x0

    .line 3321
    .end local v3           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v7           #inputStream:Ljava/io/InputStream;
    :cond_1
    return-object v0

    .line 3273
    .restart local v3       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v7       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 3274
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3307
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 3308
    .local v4, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3310
    if-eqz v7, :cond_1

    .line 3312
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3313
    :catch_2
    move-exception v9

    goto :goto_2

    .line 3310
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_2

    .line 3312
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3316
    :goto_3
    const/4 v7, 0x0

    .line 3310
    :cond_2
    throw v9

    .line 3313
    :catch_3
    move-exception v10

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_2

    .line 3297
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v2       #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #hx:I
    .restart local v6       #inSampleSize:I
    .restart local v8       #wx:I
    :catch_5
    move-exception v9

    goto :goto_1
.end method

.method public getEventContact(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getContact(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 823
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getEventIndexWithReq(Ljava/lang/String;I)I
    .locals 1
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 801
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->getIndex(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEventIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "index"

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getEventText(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 811
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventTime(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getIconNumberForView(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 1272
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1273
    const/4 v3, 0x0

    .line 1274
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1275
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1276
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarIcon;

    .line 1277
    .local v2, ic:Lcom/android/server/status/StatusBarIcon;
    iget-object v5, v2, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-ne v5, p1, :cond_1

    .line 1278
    move-object v3, v2

    .line 1282
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_0
    if-eqz v3, :cond_2

    .line 1283
    invoke-virtual {v3}, Lcom/android/server/status/StatusBarIcon;->getNumber()I

    move-result v5

    monitor-exit v4

    move v4, v5

    .line 1285
    :goto_1
    return v4

    .line 1275
    .restart local v2       #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_2
    const/4 v5, -0x1

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 1287
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;
    .locals 2
    .parameter "key"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->get(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideScreenBrightness()V
    .locals 2

    .prologue
    .line 4055
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4056
    return-void
.end method

.method incrementAnim()V
    .locals 8

    .prologue
    .line 2446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2447
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 2448
    .local v3, t:F
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2449
    .local v5, y:F
    iget v4, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2450
    .local v4, v:F
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2451
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2452
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2453
    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2456
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 2569
    iget v10, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 2570
    const/4 v10, 0x0

    .line 2631
    :goto_0
    return v10

    .line 2573
    :cond_0
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v10}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v4

    .line 2574
    .local v4, statusBarSize:I
    mul-int/lit8 v1, v4, 0x2

    .line 2575
    .local v1, hitSize:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_6

    .line 2576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v8, v10

    .line 2578
    .local v8, y:I
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v10, :cond_4

    .line 2579
    sub-int v10, v4, v8

    iput v10, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    .line 2584
    :goto_1
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v10, :cond_1

    if-lt v8, v1, :cond_2

    :cond_1
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    sub-int/2addr v10, v1

    if-le v8, v10, :cond_3

    .line 2590
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v6, v10

    .line 2591
    .local v6, x:I
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    .line 2592
    .local v0, edgeBorder:I
    if-lt v6, v0, :cond_3

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    sub-int/2addr v10, v0

    if-ge v6, v10, :cond_3

    .line 2593
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0, v8, v10}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2594
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2631
    .end local v0           #edgeBorder:I
    .end local v6           #x:I
    .end local v8           #y:I
    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto :goto_0

    .line 2581
    .restart local v8       #y:I
    :cond_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    invoke-virtual {v10, v11}, Lcom/android/server/status/TrackingView;->getLocationOnScreen([I)V

    .line 2582
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v11}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v8

    iput v10, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    goto :goto_1

    .line 2593
    .restart local v0       #edgeBorder:I
    .restart local v6       #x:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 2597
    .end local v0           #edgeBorder:I
    .end local v6           #x:I
    .end local v8           #y:I
    :cond_6
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    if-eqz v10, :cond_3

    .line 2598
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2599
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v10}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v10

    add-int v2, v4, v10

    .line 2600
    .local v2, minY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 2601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v8, v10

    .line 2602
    .restart local v8       #y:I
    iget-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    if-eqz v10, :cond_7

    if-lt v8, v2, :cond_3

    .line 2605
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2606
    iget v10, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_3

    .line 2608
    .end local v8           #y:I
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 2609
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2611
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    .line 2612
    .local v9, yVel:F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_c

    const/4 v10, 0x1

    move v3, v10

    .line 2614
    .local v3, negative:Z
    :goto_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 2615
    .local v7, xVel:F
    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-gez v10, :cond_9

    .line 2616
    neg-float v7, v7

    .line 2618
    :cond_9
    const/high16 v10, 0x4316

    cmpl-float v10, v7, v10

    if-lez v10, :cond_a

    .line 2619
    const/high16 v7, 0x4316

    .line 2622
    :cond_a
    float-to-double v10, v9

    float-to-double v12, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 2623
    .local v5, vel:F
    if-eqz v3, :cond_b

    .line 2624
    neg-float v5, v5

    .line 2627
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v5, v11}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_3

    .line 2612
    .end local v3           #negative:Z
    .end local v5           #vel:F
    .end local v7           #xVel:F
    :cond_c
    const/4 v10, 0x0

    move v3, v10

    goto :goto_4
.end method

.method isAutoBrightness()Z
    .locals 1

    .prologue
    .line 4086
    sget-boolean v0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    return v0
.end method

.method makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 1306
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    move-object v15, v0

    .line 1307
    .local v15, n:Lcom/android/server/status/NotificationData;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1308
    .local v16, remoteViews:Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 1309
    const/4 v4, 0x0

    .line 1373
    :goto_0
    return-object v4

    .line 1317
    :cond_0
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1318
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelCallView(Lcom/android/server/status/NotificationData;)V

    .line 1319
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1320
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    .line 1321
    const/4 v4, 0x0

    goto :goto_0

    .line 1322
    :cond_1
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1323
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicView(Lcom/android/server/status/NotificationData;)V

    .line 1324
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1325
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    .line 1326
    const/4 v4, 0x0

    goto :goto_0

    .line 1327
    :cond_2
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1328
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordView(Lcom/android/server/status/NotificationData;)V

    .line 1329
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1330
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    .line 1331
    const/4 v4, 0x0

    goto :goto_0

    .line 1332
    :cond_3
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 1333
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioView(Lcom/android/server/status/NotificationData;)V

    .line 1334
    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1335
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    .line 1336
    const/4 v4, 0x0

    goto :goto_0

    .line 1341
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1343
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090064

    const/4 v5, 0x0

    move-object v0, v14

    move v1, v4

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1346
    .local v17, row:Landroid/view/View;
    const v4, 0x1020002

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1347
    .local v11, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v4, v0

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1349
    iget-object v6, v15, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 1350
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_5

    .line 1351
    new-instance v4, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v7, v15, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/status/NotificationData;->tag:Ljava/lang/String;

    iget v9, v15, Lcom/android/server/status/NotificationData;->id:I

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    :cond_5
    const/4 v10, 0x0

    .line 1355
    .local v10, child:Landroid/view/View;
    const/4 v13, 0x0

    .line 1357
    .local v13, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1362
    :goto_1
    if-nez v10, :cond_6

    .line 1363
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for package "

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1364
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1359
    .restart local v6       #contentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 1360
    .local v12, e:Ljava/lang/RuntimeException;
    move-object v13, v12

    goto :goto_1

    .line 1366
    .end local v12           #e:Ljava/lang/RuntimeException;
    :cond_6
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1368
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1370
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 1371
    move-object v0, v10

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    move-object/from16 v4, v17

    .line 1373
    goto/16 :goto_0
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 908
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableList what=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 913
    :try_start_0
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 914
    .local v0, N:I
    const/4 v4, 0x0

    .line 916
    .local v4, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 917
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 918
    .local v3, t:Lcom/android/server/status/StatusBarService$DisableRecord;
    iget-object v6, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p2, :cond_3

    .line 919
    move-object v4, v3

    .line 923
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4

    .line 924
    :cond_1
    if-eqz v4, :cond_2

    .line 925
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 926
    iget-object v6, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 943
    :cond_2
    :goto_1
    monitor-exit v5

    .line 944
    :goto_2
    return-void

    .line 916
    .restart local v3       #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_4
    if-nez v4, :cond_5

    .line 930
    new-instance v4, Lcom/android/server/status/StatusBarService$DisableRecord;

    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/status/StatusBarService$DisableRecord;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 937
    :try_start_2
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_5
    iput p1, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    .line 940
    iput-object p2, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    .line 941
    iput-object p3, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 943
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 934
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catch_0
    move-exception v1

    .line 935
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method onBarViewAttached()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 2858
    const/4 v5, -0x3

    .line 2859
    .local v5, pixelFormat:I
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v2}, Lcom/android/server/status/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2860
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 2861
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 2864
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2873
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2874
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2875
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2876
    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 2878
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2879
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 2887
    const/4 v3, -0x3

    .line 2889
    .local v3, pixelFormat:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 2890
    .local v0, disph:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2891
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2892
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->getExpandedHeight()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2893
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2894
    neg-int v4, v0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2895
    const/16 v4, 0x7de

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2896
    const/16 v4, 0x1328

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2901
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2902
    const/16 v4, 0x37

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2903
    const-string v4, "StatusBarExpanded"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2904
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2905
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setFormat(I)V

    .line 2906
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 2908
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 2909
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2912
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2913
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2914
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {v4}, Lcom/android/server/status/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2915
    .local v1, hack:Landroid/widget/FrameLayout;
    return-void
.end method

.method panelSlightlyVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3042
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 3043
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    .line 3044
    if-eqz p1, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onPanelRevealed()V

    .line 3049
    :cond_0
    return-void
.end method

.method performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .locals 19
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    .line 1148
    if-eqz p3, :cond_2

    .line 1149
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v8

    .line 1150
    .local v8, notification:Lcom/android/server/status/StatusBarNotification;
    const/4 v9, 0x0

    .line 1151
    .local v9, oldData:Lcom/android/server/status/NotificationData;
    if-nez v8, :cond_4

    .line 1153
    new-instance v8, Lcom/android/server/status/StatusBarNotification;

    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    invoke-direct {v8}, Lcom/android/server/status/StatusBarNotification;-><init>()V

    .line 1154
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    .line 1155
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object v15, v0

    monitor-enter v15

    .line 1157
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->add(Lcom/android/server/status/StatusBarNotification;)V

    .line 1158
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1172
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object v15, v0

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/server/status/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    if-eqz v15, :cond_1

    if-eqz v9, :cond_0

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_0

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1176
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    move v15, v0

    and-int/lit8 v15, v15, 0xa

    if-nez v15, :cond_1

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/Ticker;->addEntry(Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1181
    :cond_1
    const/16 v15, -0x2710

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1185
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object v15, v0

    monitor-enter v15

    .line 1186
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/StatusBarIcon;

    .line 1187
    .local v6, icon:Lcom/android/server/status/StatusBarIcon;
    if-nez v6, :cond_9

    .line 1189
    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    .line 1191
    .local v14, v:Landroid/widget/LinearLayout;
    :goto_1
    new-instance v6, Lcom/android/server/status/StatusBarIcon;

    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    .line 1192
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    if-nez p3, :cond_8

    .line 1196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v13

    .line 1197
    .local v13, slotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object v12, v0

    .line 1198
    .local v12, rightIcons:[Lcom/android/server/status/StatusBarIcon;
    aget-object v16, v12, v13

    if-nez v16, :cond_7

    .line 1199
    const/4 v11, 0x0

    .line 1200
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .local v4, i:I
    :goto_2
    if-le v4, v13, :cond_6

    .line 1201
    aget-object v5, v12, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1202
    .local v5, ic:Lcom/android/server/status/StatusBarIcon;
    if-eqz v5, :cond_3

    .line 1203
    add-int/lit8 v11, v11, 0x1

    .line 1200
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1158
    .end local v4           #i:I
    .end local v5           #ic:Lcom/android/server/status/StatusBarIcon;
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    .restart local v9       #oldData:Lcom/android/server/status/NotificationData;
    :catchall_0
    move-exception v16

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 1163
    :cond_4
    iget-object v9, v8, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1164
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1165
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_0

    .line 1189
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    goto :goto_1

    .line 1206
    .restart local v4       #i:I
    .restart local v11       #pos:I
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_6
    aput-object v6, v12, v13

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1232
    .end local v4           #i:I
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :goto_3
    monitor-exit v15

    .line 1233
    :goto_4
    return-void

    .line 1209
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_7
    const-string v16, "StatusBar"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "duplicate icon in slot "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1212
    monitor-exit v15

    goto :goto_4

    .line 1232
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :catchall_1
    move-exception v16

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v16

    .line 1215
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 1216
    .local v7, iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 1219
    .end local v7           #iconIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :cond_9
    if-nez p3, :cond_a

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    goto :goto_3

    .line 1224
    :cond_a
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1225
    .local v10, parent:Landroid/view/ViewGroup;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 1229
    .restart local v7       #iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3
.end method

.method performCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2387
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2390
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 2391
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 2392
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2393
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2394
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2395
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2402
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2403
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 2405
    :cond_2
    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2407
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 2410
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performDisableActions(I)V
    .locals 4
    .parameter "net"

    .prologue
    const-string v3, "StatusBar"

    .line 3052
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 3053
    .local v1, old:I
    xor-int v0, p1, v1

    .line 3054
    .local v0, diff:I
    iput p1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 3057
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 3058
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 3059
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_EXPAND: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->animateCollapse()V

    .line 3063
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    .line 3064
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 3065
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_2

    .line 3067
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 3068
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->halt()V

    .line 3083
    :cond_1
    :goto_0
    return-void

    .line 3070
    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3073
    :cond_3
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 3075
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3078
    :cond_4
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 3079
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_1

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_1

    .line 3080
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->halt()V

    goto :goto_0
.end method

.method performExpand()V
    .locals 1

    .prologue
    .line 2360
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2363
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 2376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 2377
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 2378
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 9
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/high16 v8, 0x44fa

    const/high16 v3, 0x4348

    const/high16 v7, -0x3b06

    const/high16 v6, -0x3cb8

    const/4 v5, 0x0

    .line 2504
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2505
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    .line 2507
    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2508
    iput p2, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2512
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v2, :cond_3

    .line 2513
    if-nez p3, :cond_2

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_0

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x41c8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    cmpl-float v2, p2, v6

    if-lez v2, :cond_2

    .line 2518
    :cond_0
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2519
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2520
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2553
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2554
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2555
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2556
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2557
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2558
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2559
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->stopTracking()V

    .line 2561
    return-void

    .line 2525
    .end local v0           #now:J
    :cond_2
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2526
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2527
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 2531
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_4

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    cmpl-float v2, p2, v6

    if-lez v2, :cond_5

    .line 2536
    :cond_4
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2537
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2538
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 2544
    :cond_5
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2545
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2546
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method performRemoveIcon(Landroid/os/IBinder;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1246
    monitor-enter p0

    .line 1250
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1251
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1254
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1255
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v4, v4, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v3

    .line 1256
    .local v3, slotIndex:I
    if-ltz v3, :cond_0

    .line 1257
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 1260
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #slotIndex:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    .line 1261
    .local v1, notification:Lcom/android/server/status/StatusBarNotification;
    if-eqz v1, :cond_1

    .line 1262
    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1263
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1264
    :try_start_1
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v5, v1}, Lcom/android/server/status/NotificationViewList;->remove(Lcom/android/server/status/StatusBarNotification;)V

    .line 1265
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1268
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1269
    return-void

    .line 1265
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 1268
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v1           #notification:Lcom/android/server/status/StatusBarNotification;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method performSetIconVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1240
    :try_start_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1241
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v2, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    monitor-exit v1

    .line 1243
    return-void

    .line 1241
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 1242
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3891
    return-void
.end method

.method prepScreenBrightness(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4046
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->calcScreenBrightness(Landroid/view/MotionEvent;)I

    move-result v0

    .line 4047
    .local v0, screenBrightness:I
    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->updateScreenBrightness(I)V

    .line 4048
    return-void
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter "y"
    .parameter "opening"

    .prologue
    const/16 v5, 0x3e9

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    .line 2475
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 2476
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2477
    if-eqz p2, :cond_0

    .line 2478
    const/high16 v2, 0x44fa

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2479
    const/high16 v2, 0x4348

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2480
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2481
    iget v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2482
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2483
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2484
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2485
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v5}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2487
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2488
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2489
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2490
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2492
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 2501
    .end local v0           #now:J
    :goto_0
    return-void

    .line 2495
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 2496
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2497
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2499
    :cond_1
    iget v2, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Landroid/os/IBinder;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 782
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 783
    const/4 v1, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 784
    return-void
.end method

.method removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .locals 8
    .parameter "notification"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2240
    iget-object v2, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 2241
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2242
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2243
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2244
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 2247
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 2248
    .local v0, n:Lcom/android/server/status/NotificationData;
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-eqz v3, :cond_2

    .line 2249
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v4, :cond_3

    .line 2250
    invoke-direct {p0, v7, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2251
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    .line 2266
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->showPreviousMiniController()V

    .line 2268
    :cond_2
    return-void

    .line 2252
    :cond_3
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v6, :cond_4

    .line 2254
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->hideCallOnGoingView()V

    .line 2256
    invoke-direct {p0, v4, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2257
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    goto :goto_0

    .line 2258
    :cond_4
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 2259
    const/16 v3, 0x8

    invoke-direct {p0, v3, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2260
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    goto :goto_0

    .line 2261
    :cond_5
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v7, :cond_1

    .line 2262
    invoke-direct {p0, v6, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2263
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    goto :goto_0
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    invoke-virtual {v0, p1}, Lcom/android/server/status/DateView;->setUpdates(Z)V

    .line 2919
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2921
    return-void

    .line 2919
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setIconVisibility(Landroid/os/IBinder;Z)V
    .locals 1
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 862
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 863
    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/status/StatusBarService$NotificationCallbacks;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    .line 486
    return-void
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2924
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2}, Lcom/android/server/status/IconMerger;->getVisibility()I

    move-result v0

    .line 2925
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 2926
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2927
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 2928
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2930
    :cond_0
    return-void

    .line 2925
    .end local v1           #v:I
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method setScreenBrightness(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4063
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->calcScreenBrightness(Landroid/view/MotionEvent;)I

    move-result v1

    .line 4064
    .local v1, screenBrightness:I
    invoke-direct {p0, v1}, Lcom/android/server/status/StatusBarService;->updateScreenBrightness(I)V

    .line 4071
    invoke-direct {p0, v1}, Lcom/android/server/status/StatusBarService;->checkMinMax(I)I

    move-result v1

    .line 4073
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4076
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 4078
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 4079
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4083
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 4081
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method showScreenBrightness()V
    .locals 2

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4052
    return-void
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 2440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 2441
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2443
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 714
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 715
    .local v6, view:Lcom/android/server/status/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {v6}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    iget v5, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 723
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 724
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 725
    const v1, 0x1030069

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 727
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->initQuickPanelSetting()V

    .line 731
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->registerObserver()V

    .line 733
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 750
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 751
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3029
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3031
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 12
    .parameter "expandedPosition"

    .prologue
    const/4 v11, 0x1

    .line 2939
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v8}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v3

    .line 2940
    .local v3, h:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 2944
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v8, :cond_2

    .line 2945
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    if-eqz v8, :cond_0

    .line 2946
    neg-int v8, v2

    iput v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2947
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 2948
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2949
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2952
    :cond_0
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 2955
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2960
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3020
    :cond_1
    :goto_0
    return-void

    .line 2967
    :cond_2
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_6

    .line 2968
    move v6, v3

    .line 2981
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2982
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2983
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2985
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 2986
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/server/status/CloseDragHandle;->getLocationInWindow([I)V

    .line 2987
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    aget v0, v8, v11

    .line 2989
    .local v0, closePos:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2990
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 2992
    .local v1, contentsBottom:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v9}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2994
    move v4, v3

    .line 2995
    .local v4, max:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 2996
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2998
    :cond_3
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2999
    .local v5, min:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 3000
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3003
    :cond_4
    iget v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v9}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_9

    move v7, v11

    .line 3004
    .local v7, visible:Z
    :goto_2
    if-nez v7, :cond_5

    .line 3007
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3009
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 3010
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 2970
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_6
    const/16 v8, -0x2710

    if-ne p1, v8, :cond_7

    .line 2971
    iget v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 2974
    .end local v6           #pos:I
    :cond_7
    if-gt p1, v2, :cond_8

    .line 2975
    move v6, p1

    .line 2979
    .restart local v6       #pos:I
    :goto_3
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 2977
    .end local v6           #pos:I
    :cond_8
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_3

    .line 3003
    .restart local v0       #closePos:I
    .restart local v1       #contentsBottom:I
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_9
    const/4 v8, 0x0

    move v7, v8

    goto :goto_2
.end method

.method public updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .locals 6
    .parameter "key"
    .parameter "data"
    .parameter "n"

    .prologue
    .line 858
    const/4 v1, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 859
    return-void
.end method

.method public updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "key"
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 778
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 779
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v5, ""

    .line 3803
    const/4 v0, 0x0

    .line 3805
    .local v0, something:Z
    if-eqz p3, :cond_1

    .line 3806
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3807
    if-eqz p4, :cond_0

    .line 3808
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3817
    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3818
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3819
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3820
    const/4 v0, 0x1

    .line 3825
    :goto_1
    return-void

    .line 3810
    :cond_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v2, 0x104029f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3813
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3814
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3822
    :cond_2
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3823
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V
    .locals 9
    .parameter "notification"
    .parameter "oldData"

    .prologue
    .line 2201
    iget-object v8, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 2202
    .local v8, n:Lcom/android/server/status/NotificationData;
    if-eqz p2, :cond_1

    if-eqz v8, :cond_1

    iget-wide v0, v8, Lcom/android/server/status/NotificationData;->when:J

    iget-wide v3, p2, Lcom/android/server/status/NotificationData;->when:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-boolean v0, v8, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    iget-boolean v1, p2, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget-object v1, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-nez v0, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v0, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 2216
    :try_start_0
    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 2219
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2221
    .local v6, content:Landroid/view/ViewGroup;
    iget-object v2, v8, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 2222
    .local v2, contentIntent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 2223
    new-instance v0, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v3, v8, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/status/NotificationData;->tag:Ljava/lang/String;

    iget v5, v8, Lcom/android/server/status/NotificationData;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #content:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 2237
    return-void

    .line 2226
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2228
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t reapply views for package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2229
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_0

    .line 2232
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v0, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 2233
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 2234
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_0
.end method

.method updateResources()V
    .locals 4

    .prologue
    .line 3835
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3837
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x10402cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3838
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x10402ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3839
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x10402cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3840
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x10402cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3842
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    .line 3846
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelResources()V

    .line 3847
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 3894
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3896
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3897
    return-void
.end method

.method vibrateWithDuration(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 3902
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3904
    .local v0, vib:Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3905
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, ","

    .line 2732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
