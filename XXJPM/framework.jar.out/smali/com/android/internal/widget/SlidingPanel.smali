.class public Lcom/android/internal/widget/SlidingPanel;
.super Landroid/widget/LinearLayout;
.source "SlidingPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingPanel$Slider;,
        Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;,
        Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;,
        Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;
    }
.end annotation


# static fields
.field public static final ACTION_SONG_METADATA_REQUEST:Ljava/lang/String; = "lockscreen.action.SONG_METADATA_REQUEST"

.field public static final ACTION_SONG_METADATA_UPDATED:Ljava/lang/String; = "lockscreen.action.SONG_METADATA_UPDATED"

.field private static final ANIM_MODE_FLY_DOWN:I = 0x2

.field private static final ANIM_MODE_FLY_UP:I = 0x1

.field private static final ANIM_MODE_RESET:I = 0x0

.field public static final BACKGROUND_MODE_BATTERY_CHARGING:I = 0x2

.field public static final BACKGROUND_MODE_BATTERY_FULL:I = 0x3

.field public static final BACKGROUND_MODE_BATTERY_LOW:I = 0x1

.field public static final BACKGROUND_MODE_NORMAL:I = 0x0

.field public static final BACKGROUND_MODE_PHONE:I = 0x4

.field private static final BUTTON_REGION_HEIGHT:I = 0x6c

.field private static final CONTROL_REGION_HEIGHT:I = 0xaa

.field private static final DOUBLE_CLICK_THRESHOLD:J = 0x12cL

.field public static final EXTRA_ARTIST:Ljava/lang/String; = "lockscreen.extra.ARTIST"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "lockscreen.extra.TITLE"

.field private static final FOOTER_REGION_HEIGHT:I = 0x74

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingPanel"

.field private static final MASK_BACKGROUND:I = -0x80000000

.field private static final MOVING_THRESHOLD:I = 0xd

.field private static final PREVIEW_REGION_HEIGHT:I = 0xaa

.field public static final SLIDER_LEFT:I = 0x0

.field public static final SLIDER_MIDDLE:I = 0x1

.field public static final SLIDER_RIGHT:I = 0x2

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VISUALIZATION_REGION_HEIGHT:I = 0x60


# instance fields
.field private mAnimating:Z

.field private mAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

.field private mBackgroundMode:I

.field private mBatteryAnimationBar:Landroid/widget/ImageView;

.field private mBatteryAnimationLight:Landroid/widget/ImageView;

.field private mBatteryArea:Landroid/widget/FrameLayout;

.field private mBatteryInfo:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonRegion:Landroid/widget/LinearLayout;

.field private mCacheLayer:Landroid/widget/FrameLayout;

.field private mContentArea:Landroid/widget/LinearLayout;

.field private mControlRegion:Landroid/widget/FrameLayout;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

.field private mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

.field private mDownY:I

.field private mDraggingColorId:I

.field private mGrabbedState:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownTime:J

.field private mLastSetGrabstateTime:J

.field private mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

.field private mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

.field private mMoving:Z

.field private mMusicControl:Landroid/view/View;

.field private mMusicPlayPauseButton:Landroid/widget/ImageView;

.field private mMusicTitle:Landroid/widget/TextView;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

.field private mPreviewRegion:Landroid/widget/FrameLayout;

.field private mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

.field private mTmpLocation:[I

.field private mTopHint:Landroid/widget/TextView;

.field private mTrackingPointerId:I

.field private mTriggered:Z

.field private mUpTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVisualizationArea:Landroid/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v9, 0x12c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mGrabbedState:I

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    .line 90
    iput v6, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    .line 93
    new-array v2, v8, [I

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    .line 94
    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDownY:I

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    .line 102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/SlidingPanel;->mLastSetGrabstateTime:J

    .line 733
    iput v6, p0, Lcom/android/internal/widget/SlidingPanel;->mBackgroundMode:I

    .line 734
    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    .line 1000
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mHandler:Landroid/os/Handler;

    .line 1002
    new-instance v2, Lcom/android/internal/widget/SlidingPanel$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingPanel$4;-><init>(Lcom/android/internal/widget/SlidingPanel;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDisplayWidth:I

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDisplayHeight:I

    .line 210
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setOrientation(I)V

    .line 211
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SlidingPanel;->setGravity(I)V

    .line 213
    new-instance v2, Landroid/widget/SpectrumVisualizer;

    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mVisualizationArea:Landroid/widget/SpectrumVisualizer;

    .line 214
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mVisualizationArea:Landroid/widget/SpectrumVisualizer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 215
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

		#akki: Spectrum visualiser height changed to wrap_content (initially 0x60)
    const/16 v2, 0x30

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 218
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mVisualizationArea:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/SlidingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    .line 221
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/SlidingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 224
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setupContentArea()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setupBatteryArea()V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setupMusicControl()V

    .line 230
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SlidingPanel;->setBackgroundFor(I)V

    .line 232
    new-instance v2, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-direct {v2, p0, p0, v5}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/internal/widget/SlidingPanel;Lcom/android/internal/widget/SlidingPanel;I)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    .line 233
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setDuration(J)V

    .line 234
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    new-instance v3, Lcom/android/internal/widget/SlidingPanel$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SlidingPanel$1;-><init>(Lcom/android/internal/widget/SlidingPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    new-instance v0, Lcom/android/internal/widget/SlidingPanel$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SlidingPanel$2;-><init>(Lcom/android/internal/widget/SlidingPanel;)V

    .line 273
    .local v0, al:Landroid/view/animation/Animation$AnimationListener;
    new-instance v2, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-direct {v2, p0, p0, v7}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/internal/widget/SlidingPanel;Lcom/android/internal/widget/SlidingPanel;I)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mUpTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    .line 274
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mUpTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setDuration(J)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mUpTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 277
    new-instance v2, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-direct {v2, p0, p0, v8}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/internal/widget/SlidingPanel;Lcom/android/internal/widget/SlidingPanel;I)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDownTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    .line 278
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDownTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setDuration(J)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDownTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mScrollY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SlidingPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingPanel;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SlidingPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private clearBatteryAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 843
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 844
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 846
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 852
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 854
    :cond_1
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 665
    :cond_0
    return-void
.end method

.method private getSlider(I)Lcom/android/internal/widget/SlidingPanel$Slider;
    .locals 1
    .parameter "slider"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 976
    .local v0, result:Lcom/android/internal/widget/SlidingPanel$Slider;
    packed-switch p1, :pswitch_data_0

    .line 985
    :goto_0
    :pswitch_0
    return-object v0

    .line 978
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 979
    goto :goto_0

    .line 982
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hitDownThreshold()Z
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mScrollY:I

    neg-int v0, v0

    const/16 v1, 0x4d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitUpThreshold()Z
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mScrollY:I

    const/16 v1, 0x74

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePanel(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 622
    float-to-int v1, p2

    iget v2, p0, Lcom/android/internal/widget/SlidingPanel;->mDownY:I

    sub-int v0, v1, v2

    .line 625
    .local v0, deltaY:I
    const/16 v1, 0x74

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 628
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/SlidingPanel;->mScrollY:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 630
    const/4 v1, 0x0

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/SlidingPanel;->scrollTo(II)V

    .line 631
    return-void
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 466
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 468
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 469
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 474
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    .line 475
    return-void
.end method

.method private setBatteryAnimations()V
    .locals 23

    .prologue
    .line 857
    const/16 v13, 0x3e8

    .line 858
    .local v13, duration1:I
    const/16 v14, 0x3e8

    .line 859
    .local v14, duration2:I
    const/16 v15, 0x3e8

    .line 860
    .local v15, duration3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int/lit8 v12, v19, -0x74

    .line 863
    .local v12, deltaY:I
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v0, v12

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v10

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 864
    .local v10, barTranslate1:Landroid/view/animation/TranslateAnimation;
    const/16 v19, 0x1

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 866
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const v19, 0x3e4ccccd

    const/high16 v20, 0x3f80

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 867
    .local v5, barAlpha1:Landroid/view/animation/AlphaAnimation;
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 869
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 870
    .local v8, barSet1:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 871
    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 872
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v0, v8

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 873
    new-instance v19, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 876
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v0, v12

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v11

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 878
    .local v11, barTranslate2:Landroid/view/animation/TranslateAnimation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v19, 0x3f80

    const/16 v20, 0x0

    move-object v0, v6

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 879
    .local v6, barAlpha2:Landroid/view/animation/AlphaAnimation;
    const/16 v19, 0x1

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 881
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 882
    .local v9, barSet2:Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 883
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 884
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v0, v9

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 887
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 888
    .local v7, barAlpha3:Landroid/view/animation/AlphaAnimation;
    const/16 v19, 0x1

    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 889
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v0, v7

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 891
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 892
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 893
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 897
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 898
    .local v16, lightAlpha1:Landroid/view/animation/AlphaAnimation;
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 901
    new-instance v17, Landroid/view/animation/AlphaAnimation;

    const v19, 0x3e4ccccd

    const/high16 v20, 0x3f80

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 902
    .local v17, lightAlpha2:Landroid/view/animation/AlphaAnimation;
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 905
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/high16 v19, 0x3f80

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 906
    .local v18, lightAlpha3:Landroid/view/animation/AlphaAnimation;
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 908
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 909
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 910
    new-instance v19, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 912
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/16 v2, 0x8

    .line 672
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingPanel;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 683
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    :goto_1
    return-void

    .line 677
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 678
    iput p1, p0, Lcom/android/internal/widget/SlidingPanel;->mGrabbedState:I

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingPanel;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupBatteryArea()V
    .locals 8

    .prologue
    const/16 v7, 0x51

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 306
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-void
.end method

.method private setupButtonRegion()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, -0x1

    .line 375
    new-instance v0, Lcom/android/internal/widget/SlidingPanel$Slider;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v0, Lcom/android/internal/widget/SlidingPanel$Slider;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v0, Lcom/android/internal/widget/SlidingPanel$Slider;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;-><init>(Lcom/android/internal/widget/SlidingPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    return-void
.end method

.method private setupContentArea()V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x8

    const/high16 v6, 0x4000

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 332
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    .line 333
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    const v2, 0x10402a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x4800

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 343
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    .line 349
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

		#akki: mControlRegion (FrameLayout) set to width:match_parent height:wrap_content
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    .line 354
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

		#akki:  height of mPreviewRegion (FrameLayout,changed to wrap_content) initially 0xaa
    const/16 v3, 0x55

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 359
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

		#akki: height of buttonRegion (changed to wrap_content)initially 0x6c
    const/16 v3, 0x36

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setupButtonRegion()V

    .line 363
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, footer:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

		#akki: height of bottomMost view in linearLayout changed to half pixels (initially 0x74)(its just a way to adjust the main slider)
    const/16 v2, 0x3a

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mButtonRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method private setupMusicControl()V
    .locals 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/SlidingPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicTitle:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    const v1, 0x10202c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    const v1, 0x10202c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    const v1, 0x10202be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mVisualizationArea:Landroid/widget/SpectrumVisualizer;

    new-instance v1, Lcom/android/internal/widget/SlidingPanel$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingPanel$3;-><init>(Lcom/android/internal/widget/SlidingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->setOnActiveStreamChangedListener(Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;)V

    .line 303
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 646
    :goto_0
    monitor-exit p0

    return-void

    .line 642
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mVibrator:Landroid/os/Vibrator;

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    aget v0, v0, v2

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    aget v0, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    aget v0, v0, v3

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mTmpLocation:[I

    aget v0, v0, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public enableMusicControl(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 691
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mMusicControl:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/SlidingPanel;->setControlView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 692
    return-void

    :cond_0
    move-object v0, v1

    .line 691
    goto :goto_0
.end method

.method public enableVisualization(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mVisualizationArea:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 696
    return-void
.end method

.method public getSliderTextVisibility(I)I
    .locals 1
    .parameter "slider"

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingPanel;->getSlider(I)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingPanel$Slider;->getTextVisibility()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 395
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/SlidingPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 412
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 480
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 481
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 483
    .local v6, y:F
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingPanel;->mAnimating:Z

    if-eqz v7, :cond_0

    move v7, v11

    .line 530
    :goto_0
    return v7

    .line 487
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v1

    .line 488
    .local v1, leftHit:Z
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v4

    .line 489
    .local v4, rightHit:Z
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v2

    .line 490
    .local v2, middleHit:Z
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v3

    .line 491
    .local v3, preivewHit:Z
    iget v7, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    if-gez v7, :cond_1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v7, v11

    .line 492
    goto :goto_0

    .line 495
    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v7, v12

    .line 530
    goto :goto_0

    .line 497
    :pswitch_0
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    .line 498
    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingPanel;->mMoving:Z

    .line 499
    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    .line 500
    float-to-int v7, v6

    iput v7, p0, Lcom/android/internal/widget/SlidingPanel;->mDownY:I

    .line 501
    const-wide/16 v7, 0x1e

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/SlidingPanel;->vibrate(J)V

    .line 502
    if-eqz v2, :cond_5

    .line 503
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mMiddleSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 504
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/widget/SlidingPanel;->mLastDownTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/SlidingPanel;->mLastDownTime:J

    .line 523
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/SlidingPanel;->mLastSetGrabstateTime:J

    .line 524
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/SlidingPanel$Slider;->setPressed(Z)V

    .line 525
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 510
    :cond_3
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/widget/SlidingPanel;->mLastDownTime:J

    .line 511
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v12

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->enableMusicControl(Z)V

    goto :goto_2

    :cond_4
    move v7, v11

    goto :goto_3

    .line 513
    :cond_5
    if-eqz v1, :cond_6

    .line 514
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mLeftSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 515
    invoke-direct {p0, v12}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    goto :goto_2

    .line 516
    :cond_6
    if-eqz v4, :cond_7

    .line 517
    iget-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mRightSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 518
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    goto :goto_2

    .line 521
    :cond_7
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    goto :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 416
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 418
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->clearBatteryAnimations()V

    .line 421
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setBatteryAnimations()V

    .line 423
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel;->enableVisualization(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 428
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->clearBatteryAnimations()V

    .line 429
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/SlidingPanel;->scrollTo(II)V

    .line 433
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel;->enableMusicControl(Z)V

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel;->enableVisualization(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 436
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel;->setBackgroundFor(I)V

    .line 437
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 442
    const/16 v1, 0x55

    .line 443
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 453
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 454
    .local v0, action:I
    if-nez v0, :cond_1

    .line 455
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/SlidingPanel;->sendMediaButtonBroadcast(II)V

    .line 461
    :cond_0
    :goto_1
    return v3

    .line 445
    .end local v0           #action:I
    :pswitch_1
    const/16 v1, 0x58

    .line 446
    goto :goto_0

    .line 449
    :pswitch_2
    const/16 v1, 0x57

    goto :goto_0

    .line 457
    .restart local v0       #action:I
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 458
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/SlidingPanel;->sendMediaButtonBroadcast(II)V

    goto :goto_1

    .line 443
    :pswitch_data_0
    .packed-switch 0x10202c0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const v10, 0x10403a6

    const v9, 0x10403a4

    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 535
    iget v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    if-ltz v3, :cond_1

    .line 536
    iget v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 537
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 541
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 542
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 543
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 604
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    if-gez v3, :cond_2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    move v3, v8

    :goto_1
    return v3

    .line 545
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingPanel;->mMoving:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SlidingPanel;->mDownY:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4150

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 549
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingPanel;->mMoving:Z

    if-nez v3, :cond_4

    .line 550
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 551
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->enableVisualization(Z)V

    .line 552
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingPanel;->mMoving:Z

    .line 557
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/SlidingPanel;->mLastSetGrabstateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 558
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/widget/SlidingPanel;->mLastSetGrabstateTime:J

    .line 562
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/SlidingPanel;->movePanel(FF)V

    .line 563
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->hitDownThreshold()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 564
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    .line 565
    const-wide/16 v3, 0x28

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingPanel;->vibrate(J)V

    .line 566
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mDownTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    iput-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    .line 574
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->hitDownThreshold()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->hitUpThreshold()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 576
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    goto :goto_0

    .line 568
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->hitUpThreshold()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 569
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    .line 570
    const-wide/16 v3, 0x28

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingPanel;->vibrate(J)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mUpTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    iput-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    goto :goto_2

    .line 581
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    if-eqz v3, :cond_8

    .line 582
    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    .line 583
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    if-eqz v3, :cond_1

    .line 584
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentTriggerAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SlidingPanel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 590
    :cond_8
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mTopHint:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mTrackingPointerId:I

    .line 592
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingPanel;->mTriggered:Z

    .line 593
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    if-eqz v3, :cond_9

    .line 594
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/SlidingPanel$Slider;->setPressed(Z)V

    .line 595
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mCurrentSlider:Lcom/android/internal/widget/SlidingPanel$Slider;

    .line 597
    :cond_9
    iput v7, p0, Lcom/android/internal/widget/SlidingPanel;->mDownY:I

    .line 598
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel;->mAnimation:Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SlidingPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 599
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingPanel;->setGrabbedState(I)V

    goto/16 :goto_0

    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_a
    move v3, v7

    .line 604
    goto/16 :goto_1

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundFor(I)V
    .locals 11
    .parameter "mode"

    .prologue
    const/high16 v10, 0x4040

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 736
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-ne v5, v9, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 737
    .local v3, controlIsHided:Z
    :goto_0
    const/4 v2, 0x0

    .line 738
    .local v2, color:I
    const/4 v4, 0x0

    .line 739
    .local v4, resId:I
    const/4 v0, 0x0

    .line 740
    .local v0, batteryAnimationBarId:I
    const/4 v1, 0x0

    .line 742
    .local v1, batteryAnimationLightId:I
    iput p1, p0, Lcom/android/internal/widget/SlidingPanel;->mBackgroundMode:I

    .line 743
    packed-switch p1, :pswitch_data_0

    .line 798
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SlidingPanel;->setBackgroundColor(I)V

    .line 799
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mCacheLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 800
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 801
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mContentArea:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 805
    :cond_0
    if-eqz v0, :cond_5

    .line 806
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 809
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->setBatteryAnimations()V

    .line 817
    :goto_2
    return-void

    .end local v0           #batteryAnimationBarId:I
    .end local v1           #batteryAnimationLightId:I
    .end local v2           #color:I
    .end local v3           #controlIsHided:Z
    .end local v4           #resId:I
    :cond_1
    move v3, v8

    .line 736
    goto :goto_0

    .line 745
    .restart local v0       #batteryAnimationBarId:I
    .restart local v1       #batteryAnimationLightId:I
    .restart local v2       #color:I
    .restart local v3       #controlIsHided:Z
    .restart local v4       #resId:I
    :pswitch_0
    if-eqz v3, :cond_2

    .line 746
    const v4, 0x10804aa

    .line 747
    const v5, 0x10804b6

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    goto :goto_1

    .line 750
    :cond_2
    const/high16 v2, -0x8000

    .line 751
    const v4, 0x10804af

    .line 752
    const v5, 0x10804b4

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    goto :goto_1

    .line 757
    :pswitch_1
    const v0, 0x10804ca

    .line 758
    const v1, 0x10804cb

    .line 762
    :pswitch_2
    const/high16 v2, -0x8000

    .line 764
    if-eqz v3, :cond_3

    .line 765
    const v4, 0x10804ab

    .line 766
    const v5, 0x10804ac

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    .line 773
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    const v6, -0x4cb70100

    invoke-virtual {v5, v10, v7, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 769
    :cond_3
    const v4, 0x10804b0

    .line 770
    const v5, 0x10804b1

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    goto :goto_3

    .line 777
    :pswitch_3
    const/high16 v2, -0x8000

    .line 779
    if-eqz v3, :cond_4

    .line 780
    const v4, 0x10804ad

    .line 781
    const v5, 0x10804ae

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    .line 788
    :goto_4
    const v0, 0x10804cc

    .line 789
    const v1, 0x10804cd

    .line 790
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    const/high16 v6, -0x4c01

    invoke-virtual {v5, v10, v7, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1

    .line 784
    :cond_4
    const v4, 0x10804b2

    .line 785
    const v5, 0x10804b3

    iput v5, p0, Lcom/android/internal/widget/SlidingPanel;->mDraggingColorId:I

    goto :goto_4

    .line 794
    :pswitch_4
    const v4, 0x10804b5

    goto/16 :goto_1

    .line 813
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingPanel;->clearBatteryAnimations()V

    goto :goto_2

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setBatteryInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    return-void
.end method

.method public setControlView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 701
    if-eqz p1, :cond_1

    .line 702
    if-nez p2, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 706
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 712
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel;->setBackgroundFor(I)V

    .line 713
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel;->mOnTriggerListener:Lcom/android/internal/widget/SlidingPanel$OnTriggerListener;

    .line 654
    return-void
.end method

.method public setPreviewView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 717
    if-eqz p1, :cond_0

    .line 718
    if-nez p2, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel;->mPreviewRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSliderImage(II)V
    .locals 1
    .parameter "slider"
    .parameter "resId"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingPanel;->getSlider(I)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingPanel$Slider;->setImage(I)V

    .line 990
    return-void
.end method

.method public setSliderText(ILjava/lang/String;)V
    .locals 1
    .parameter "slider"
    .parameter "text"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingPanel;->getSlider(I)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingPanel$Slider;->setText(Ljava/lang/String;)V

    .line 994
    return-void
.end method
