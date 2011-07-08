.class Lcom/android/internal/policy/impl/MiuiLockScreen;
.super Landroid/widget/FrameLayout;
.source "MiuiLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$3;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    }
.end annotation


# static fields
.field private static final CallLog_COLUMNS:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MAKR_PREVIEW_READ_DELAY:J = 0x5dcL

.field private static final QUERY_TOKEN:I = 0x35

.field private static final TAG:Ljava/lang/String; = "MiuiLockScreen"

.field private static mBatteryInfoState:I

.field private static mPlugedState:I

.field private static final sLongPressVibration:Ljava/lang/Runnable;


# instance fields
.field private mAlarm:Landroid/widget/TextView;

.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

.field private mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mCarrier:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/view/View;

.field private mEmergencyCall:Landroid/view/View;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInMiuiLockScreen:Z

.field private mInfo:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLastGrabTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessagingTabApp:Ljava/lang/String;

.field private mNextAlarm:Ljava/lang/String;

.field private mPluggedIn:Z

.field private mPreviewList:Landroid/widget/ListView;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingPanel;

.field private mShowingBatteryInfo:Z

.field private mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

.field private mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 895
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    .line 1107
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "custom_edt_app_intent"

    invoke-static {v1, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMessagingTabApp:Ljava/lang/String;

    const/4 v7, 0x0

    .line 92
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 117
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 124
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 127
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 130
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 132
    iput-object v7, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mNextAlarm:Ljava/lang/String;

    .line 133
    iput-object v7, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    iput-object p4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 218
    check-cast p5, Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .end local p5
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 220
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->shouldEnableMenuKey()Z

    move-result v1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInMiuiLockScreen:Z

    .line 222
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCreationOrientation:I

    .line 224
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 232
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 233
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090096

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    const v1, 0x10201be

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 239
    const v1, 0x1090097

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    const v2, 0x102005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDate:Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    const v2, 0x1020128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    const v2, 0x10202c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mInfo:Landroid/widget/TextView;

    .line 247
    const v1, 0x10201cb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 249
    new-instance v1, Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/SlidingPanel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    invoke-virtual {v1, v2, v7}, Lcom/android/internal/widget/SlidingPanel;->setPreviewView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    const v2, 0x10804d1

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderImage(II)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    const v2, 0x10804ce

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderImage(II)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    const/4 v2, 0x2

    const v3, 0x10804d4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel;->setSliderImage(II)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x53

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    const v1, 0x10201a5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    .line 270
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setHapticFeedbackEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080547

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-direct {v1, p0, p1, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    .line 287
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 288
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-direct {v1, p0, p1, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    .line 289
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 291
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusable(Z)V

    .line 292
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusableInTouchMode(Z)V

    .line 293
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setDescendantFocusability(I)V

    .line 295
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 296
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingPanel;->setOnTriggerListener(Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;)V

    .line 299
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 698
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 703
    :goto_0
    return-object v0

    .line 700
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 701
    goto :goto_0

    .line 703
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 576
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 577
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 596
    :goto_1
    return-object v1

    .line 574
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 580
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 596
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 582
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 584
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 586
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 588
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 590
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 592
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 594
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mNextAlarm:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateStatusLines()V

    .line 493
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 7

    const/4 v3, 0x0

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, info:Ljava/lang/String;
    const/4 v0, 0x0

    .line 511
    .local v0, backgroundId:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    sget v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlugedState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 513
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v2, 0x63

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    const/4 v0, 0x3

    .line 526
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SlidingPanel;->setBatteryInfo(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SlidingPanel;->setBackgroundFor(I)V

    .line 528
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402a8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    const/4 v0, 0x2

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 6

    .prologue
    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 537
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateFormatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/LunarDate;->solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 311
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshAlarmDisplay()V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateFormatString:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshTimeAndDateDisplay()V

    .line 315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateStatusLines()V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startCallsQuery()V

    .line 318
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startSmsQuery()V

    .line 320
    return-void
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 464
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 198
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 199
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 200
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 201
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private startCallsQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x35

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->setLoading(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v0, " AND new=1 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private startSmsQuery()V
    .locals 8

    .prologue
    return-void

    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->setLoading(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x10402ae

    const v3, 0x10402ac

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 608
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$3;->$SwitchMap$com$android$internal$policy$impl$MiuiLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 695
    :goto_0
    return-void

    .line 611
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setVisibility(Landroid/view/View;I)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 653
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 660
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 668
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 681
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingPanel;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->showStatusLines()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    :cond_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 768
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 769
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->closeCursor()V

    .line 771
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 727
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 734
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 739
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 746
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 378
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    if-ne p1, v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 380
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 382
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 383
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/SlidingPanel;->setPreviewView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 384
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    if-eq v4, v5, :cond_0

    .line 385
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    :cond_0
    iget-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 393
    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    const-wide/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    .line 398
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/SlidingPanel;->setPreviewView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 400
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    if-eq v4, v5, :cond_3

    .line 401
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    :cond_3
    iget-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 409
    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    const-wide/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 412
    :cond_4
    if-nez p2, :cond_9

    .line 416
    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 418
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPreviewList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    .line 419
    .local v0, adapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
    if-eqz v0, :cond_6

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCount()I

    move-result v1

    .line 424
    .local v1, count:I
    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_5

    .line 425
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->markRead(Landroid/content/Context;I)V

    .line 424
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 429
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.update_application_message"

    const/4 v5, 0x2

    if-le v1, v5, :cond_7

    const/4 v5, 0x2

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    if-ne v0, v4, :cond_8

    .line 436
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v5, "com.android.contacts/.TwelveKeyDialer"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startCallsQuery()V

    .line 449
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    .end local v0           #adapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 455
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mDateView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/SlidingPanel;->setPreviewView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 430
    .restart local v0       #adapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 442
    :cond_8
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v5, "com.android.mms/.ui.MmsTabActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startSmsQuery()V

    goto :goto_3

    .line 456
    .end local v0           #adapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 324
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInMiuiLockScreen:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingPanel;->onPause()V

    .line 756
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;)V

    .line 776
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 415
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 416
    iput p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 419
    sget v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlugedState:I

    if-gez v0, :cond_0

    .line 420
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlugedState:I

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 423
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateStatusLines()V

    .line 424
    return-void

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 568
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingPanel;->onResume()V

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;)V

    .line 763
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 780
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 711
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateStatusLines()V

    .line 712
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshTimeAndDateDisplay()V

    .line 533
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 11
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/high16 v8, 0x3400

    const/4 v7, 0x1

    const-string v10, "android.intent.category.DEFAULT"

    const-string v9, "android.intent.action.VIEW"

    .line 332
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/android/internal/widget/SlidingPanel;

    if-ne p1, v5, :cond_0

    .line 333
    if-ne p2, v7, :cond_1

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, dialIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 374
    .end local v1           #dialIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    .line 344
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 345
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 346
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMessagingTabApp:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 351
    .local v3, i:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 4
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    sput p1, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoState:I

    .line 430
    iput p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 431
    sget v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1

    .line 432
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 433
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 436
    :goto_0
    sput v3, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlugedState:I

    .line 444
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateStatusLines()V

    .line 446
    return-void

    .line 435
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    goto :goto_0

    .line 439
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 440
    sput v2, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlugedState:I

    goto :goto_1
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 716
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 717
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 718
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_1

    move v0, v4

    .line 719
    .local v0, isKeyboardOpen:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 723
    .end local v0           #isKeyboardOpen:Z
    :cond_0
    return-void

    .line 718
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
