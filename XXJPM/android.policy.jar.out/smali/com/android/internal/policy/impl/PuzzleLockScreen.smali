.class Lcom/android/internal/policy/impl/PuzzleLockScreen;
.super Landroid/widget/LinearLayout;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PuzzleLockScreen$4;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final GLASS_EFFECT_ANIMATION:Z = true

.field private static final TAG:Ljava/lang/String; = "PuzzleLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mActivated:Z

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelp2:Landroid/widget/TextView;

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLayoutGlassEffect:Landroid/widget/ImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mMissedCallCount:I

.field private mMissedMsgCount:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPuzzleMatch:Landroid/widget/ImageView;

.field private mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

.field private mPuzzleMatchLayout:Landroid/widget/LinearLayout;

.field private mPuzzleMatchLayoutLeft:I

.field private mPuzzleMatchLayoutTop:I

.field private mPuzzleNotiCall:Landroid/widget/ImageView;

.field private mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiCallText:Landroid/widget/TextView;

.field private mPuzzleNotiMail:Landroid/widget/ImageView;

.field private mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiMailText:Landroid/widget/TextView;

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockLayoutLeft:I

.field private mPuzzleUnlockLayoutTop:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

.field private mSweepTextBox:Landroid/widget/LinearLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

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

    const/16 v8, 0x150

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 128
    const/16 v2, 0x12

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    .line 129
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 130
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 152
    sget-object v2, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 270
    iput-object p2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 271
    iput-object p3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 272
    iput-object p4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 274
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 276
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    .line 277
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 278
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 280
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 281
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 284
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 285
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 286
    const v2, 0x109007e

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 292
    :goto_0
    const v2, 0x10201be

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    const v2, 0x1020270

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 302
    const v2, 0x1020250

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 303
    const v2, 0x1020255

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    .line 305
    const v2, 0x1020256

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x10403a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v3, 0x108036f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 313
    const v2, 0x1020271

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    .line 314
    const v2, 0x1020272

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    const v2, 0x1020273

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    .line 318
    const v2, 0x1020274

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    const v2, 0x1020275

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    .line 322
    const v2, 0x1020276

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    .line 328
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 340
    :goto_1
    const v2, 0x102024e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 349
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 350
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_0

    .line 387
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 388
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 389
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 390
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 392
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 393
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 394
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 395
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    .line 414
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusable(Z)V

    .line 631
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusableInTouchMode(Z)V

    .line 632
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setDescendantFocusability(I)V

    .line 634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 635
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 636
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 637
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 638
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 639
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 640
    return-void

    .line 288
    .end local v0           #densityDpiForPuzzle:I
    :cond_0
    const v2, 0x109007f

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 338
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 352
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 353
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 354
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 355
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 357
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 358
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 359
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 360
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 363
    :sswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 364
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 365
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 366
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 368
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 369
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 370
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 371
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 374
    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 375
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 376
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 377
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 378
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 379
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 381
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 382
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 383
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 384
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 960
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 967
    :goto_0
    return-object v0

    .line 962
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 963
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

    .line 964
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 965
    goto :goto_0

    .line 967
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 862
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 863
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 882
    :goto_1
    return-object v1

    .line 860
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 866
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 882
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 868
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 870
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 872
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 874
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 876
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 878
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 880
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 866
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
    .line 985
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 977
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 979
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 2
    .parameter "notiMode"

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 656
    .local v0, intent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 658
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 247
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 249
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 251
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 252
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

.method private updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 890
    return-void
.end method

.method private updateMissedEvent()V
    .locals 10

    .prologue
    const/high16 v9, 0x41c0

    const/high16 v8, 0x4188

    const/16 v7, 0x3e7

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 668
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 670
    .local v1, nMsgCount:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 673
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v0, v3, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 674
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 677
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v3, v7, :cond_2

    iput v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 678
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v3, v7, :cond_3

    iput v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 681
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 683
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 686
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 690
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-nez v3, :cond_8

    move v2, v6

    .line 691
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 694
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-nez v3, :cond_9

    move v2, v6

    .line 695
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    :cond_5
    return-void

    .line 682
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 684
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 690
    :cond_8
    const/4 v3, 0x0

    move v2, v3

    goto :goto_2

    .line 694
    :cond_9
    const/4 v3, 0x0

    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 645
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 651
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 729
    return-void
.end method

.method public onMediaStoped(Z)V
    .locals 2
    .parameter "isStop"

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-eqz p1, :cond_0

    .line 825
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_2

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    goto :goto_0
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 800
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 804
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 808
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 812
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_4

    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 816
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 725
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 741
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 748
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1003
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 702
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 854
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 752
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 759
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 761
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 766
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 768
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 786
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 721
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 974
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 713
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 707
    return-void
.end method
