.class Lcom/android/internal/policy/impl/EpicLockScreen;
.super Landroid/widget/LinearLayout;
.source "EpicLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/EpicLockScreen$2;,
        Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/EpicLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "EpicLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private locale_es:Ljava/util/Locale;

.field private mActivated:Z

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEnableMenuKeyInLockScreen:Z

.field private mEventMatchLayoutTop:I

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mMissedCallCount:I

.field private mMissedCallMatchLayoutLeft:I

.field private mMissedEventIcon:Landroid/widget/ImageView;

.field private mMissedEventLayout:Landroid/widget/LinearLayout;

.field private mMissedEventLayout2:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedNotiCallCount:Landroid/widget/TextView;

.field private mMissedNotiCallText:Landroid/widget/TextView;

.field private mMissedNotiCalllayout:Landroid/widget/LinearLayout;

.field private mMissedNotiCount:Landroid/widget/TextView;

.field private mMissedNotiMailCount:Landroid/widget/TextView;

.field private mMissedNotiMailText:Landroid/widget/TextView;

.field private mMissedNotiMaillayout:Landroid/widget/LinearLayout;

.field private mMissedNotiText:Landroid/widget/TextView;

.field private mMissedTxtMatchLayoutRight:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mStatus:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

.field private mUnlockArrow:Landroid/widget/LinearLayout;

.field private mUnlockArrowLayout:Landroid/widget/LinearLayout;

.field private mUnlockButton:Landroid/widget/LinearLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockEventArrow:Landroid/widget/ImageView;

.field private mUnlockHorizontalMargin:I

.field private mUnlockLayoutLeft:I

.field private mUnlockLayoutTop:I

.field private mUnlockMatchLayoutTop:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockMissedCallArrow:Landroid/widget/ImageView;

.field private mUnlockMissedTxtArrow:Landroid/widget/ImageView;

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x1e0

    const/16 v8, 0x120

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 301
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 159
    const/16 v2, 0x12

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    .line 160
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 161
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 184
    sget-object v2, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mStatus:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    .line 303
    iput-object p2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 304
    iput-object p3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 305
    iput-object p4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mEnableMenuKeyInLockScreen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    .line 315
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    .line 316
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mActivated:Z

    .line 318
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    .line 319
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    .line 322
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 323
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 324
    const v2, 0x109008b

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 330
    :goto_0
    const v2, 0x10201be

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    const v2, 0x1020270

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 365
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    .line 366
    const v2, 0x102028f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    .line 367
    const v2, 0x1020290

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    .line 368
    const v2, 0x1020291

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    .line 369
    const v2, 0x1020292

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    .line 370
    const v2, 0x1020293

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    .line 371
    const v2, 0x1020296

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    .line 372
    const v2, 0x1020294

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    .line 373
    const v2, 0x1020297

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    .line 374
    const v2, 0x1020295

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallCount:Landroid/widget/TextView;

    .line 375
    const v2, 0x1020298

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailCount:Landroid/widget/TextView;

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    const v3, 0x10403fc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    const v3, 0x10403fd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->locale_es:Ljava/util/Locale;

    .line 385
    const v2, 0x1020299

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    .line 386
    const v2, 0x102029a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    .line 388
    const v2, 0x102029b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockArrowLayout:Landroid/widget/LinearLayout;

    .line 389
    const v2, 0x102029c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    .line 390
    const v2, 0x102029d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    .line 391
    const v2, 0x102029e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    .line 399
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 400
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/policy/impl/EpicLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 411
    :goto_1
    const v2, 0x102024e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v2, 0x10202f3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 414
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 420
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 421
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_0

    .line 458
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 459
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 460
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    .line 461
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockVerticalMargin:I

    .line 463
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    .line 464
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    .line 465
    iput v9, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    .line 466
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    .line 556
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/EpicLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/EpicLockScreen$1;-><init>(Lcom/android/internal/policy/impl/EpicLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 991
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->setFocusable(Z)V

    .line 992
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->setFocusableInTouchMode(Z)V

    .line 993
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->setDescendantFocusability(I)V

    .line 995
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->updateMissedEvent()V

    .line 996
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 997
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 998
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 999
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 1000
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/EpicLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1001
    return-void

    .line 326
    .end local v0           #densityDpiForPuzzle:I
    :cond_0
    const v2, 0x109008a

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 409
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/EpicUnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/EpicUnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

    goto/16 :goto_1

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 423
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 424
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 425
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    .line 426
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockVerticalMargin:I

    .line 428
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    .line 429
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    .line 430
    iput v9, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    .line 431
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 434
    :sswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 435
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 436
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    .line 437
    iput v8, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockVerticalMargin:I

    .line 439
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    .line 440
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    .line 441
    iput v9, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    .line 442
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 445
    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 446
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 447
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 448
    iget v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 449
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    .line 450
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockVerticalMargin:I

    .line 452
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    .line 453
    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    .line 454
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    .line 455
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 421
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/EpicLockScreen;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->locale_es:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/EpicLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EpicLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/EpicUnlockClock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedTxtMatchLayoutRight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedTxtMatchLayoutRight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/EpicLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mEventMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/EpicLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mEventMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1395
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 1402
    :goto_0
    return-object v0

    .line 1397
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1399
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1400
    goto :goto_0

    .line 1402
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/EpicLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1297
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1298
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    .line 1317
    :goto_1
    return-object v1

    .line 1295
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1301
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$2;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1317
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1303
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1305
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1307
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1309
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1311
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1313
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1315
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/EpicLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    goto :goto_1

    .line 1301
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

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 1413
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/EpicLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mStatus:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mStatus:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/EpicLockScreen;->updateLayout(Lcom/android/internal/policy/impl/EpicLockScreen$Status;)V

    .line 1415
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 2
    .parameter "notiMode"

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1017
    .local v0, intent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1019
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 280
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 282
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 284
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 285
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

.method private switchLockscreenMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1059
    packed-switch p1, :pswitch_data_0

    .line 1073
    :goto_0
    :pswitch_0
    return-void

    .line 1063
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1059
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/EpicLockScreen$Status;)V
    .locals 2
    .parameter "status"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMissedEvent()V
    .locals 10

    .prologue
    const/16 v5, 0x270f

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v9, "("

    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 1029
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 1031
    .local v1, nMsgCount:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 1032
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 1034
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-le v0, v3, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    .line 1035
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    .line 1037
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-le v3, v5, :cond_2

    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    .line 1038
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-le v3, v5, :cond_3

    iput v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    .line 1061
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mCreatedInPortrait:Z

    if-eqz v3, :cond_c

    .line 1066
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-nez v3, :cond_9

    .line 1067
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-eqz v3, :cond_5

    .line 1068
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    const v4, 0x1080405

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_6

    const v4, 0x10403fd

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1070
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1077
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1078
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    :cond_5
    :goto_2
    return-void

    .line 1069
    :cond_6
    const v4, 0x10403ff

    goto :goto_0

    .line 1072
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    const v4, 0x1080404

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1073
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_8

    const v4, 0x10403fc

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1074
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1073
    :cond_8
    const v4, 0x10403fe

    goto :goto_3

    .line 1082
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_a

    const v4, 0x10403fd

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1083
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_b

    const v4, 0x10403fc

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1084
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1086
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1087
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1088
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1082
    :cond_a
    const v4, 0x10403ff

    goto :goto_4

    .line 1083
    :cond_b
    const v4, 0x10403fe

    goto :goto_5

    .line 1093
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-lez v3, :cond_d

    .line 1094
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_e

    const v4, 0x10403fc

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1095
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1096
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1097
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1098
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1099
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    :cond_d
    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-lez v3, :cond_5

    .line 1102
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_f

    const v4, 0x10403fd

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1103
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1104
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1105
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1107
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1094
    :cond_e
    const v4, 0x10403fe

    goto :goto_6

    .line 1102
    :cond_f
    const v4, 0x10403ff

    goto :goto_7
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1230
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1006
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 1012
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 1146
    return-void
.end method

.method public onMediaStoped(Z)V
    .locals 2
    .parameter "isStop"

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mActivated:Z

    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    if-eqz p1, :cond_0

    .line 1260
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_2

    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    .line 1262
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    goto :goto_0
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 1253
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1239
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1243
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 1247
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 1248
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 1251
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 1252
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 1
    .parameter "inPortrait"

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 1155
    const-string v2, "EpicLockScreen"

    const-string v3, "EpicLock onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mActivated:Z

    .line 1158
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-eqz v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 1171
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1172
    .local v0, mDensity:I
    const/16 v1, 0x26

    .line 1173
    .local v1, mOffset:I
    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    .line 1174
    const/16 v1, 0x13

    .line 1176
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    iget v6, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassLeft:I

    iget v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassHeight:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mInitGlassWidth:I

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 840
    .line 841
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1115
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mStatus:Lcom/android/internal/policy/impl/EpicLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/EpicLockScreen;->updateLayout(Lcom/android/internal/policy/impl/EpicLockScreen$Status;)V

    .line 1289
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1185
    const-string v1, "EpicLockScreen"

    const-string v2, "EpicLock onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1188
    .local v0, mDensity:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1189
    div-int/lit8 v1, v0, 0x78

    mul-int/lit8 v1, v1, 0x17

    iput v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    .line 1194
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 1195
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/EpicLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mActivated:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/EpicLockScreen;->switchLockscreenMode(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1204
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->updateMissedEvent()V

    .line 1206
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mMediaOpened:Z

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 1225
    :cond_0
    return-void

    .line 1191
    :cond_1
    div-int/lit8 v1, v0, 0x78

    mul-int/lit8 v1, v1, 0x2e

    iput v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockHorizontalMargin:I

    goto :goto_0

    .line 1202
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/EpicUnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_1
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1134
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 1410
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 1126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EpicLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1130
    :goto_0
    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/EpicUnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EpicUnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1120
    return-void
.end method
