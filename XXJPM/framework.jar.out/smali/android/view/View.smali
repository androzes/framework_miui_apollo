.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field protected static final FIRST_STATE_SET:[I = null

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field protected static final LAST_STATE_SET:[I = null

.field private static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field protected static final MIDDLE_STATE_SET:[I = null

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FIRST_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_LAST_STATE_SET:[I = null

.field protected static final PRESSED_MIDDLE_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SINGLE_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final SINGLE_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static sInstanceCount:J

.field private static sTags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTagsLock:Ljava/lang/Object;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDrawableState:[I

.field private mDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mSoundEffect:I

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field private mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Landroid/view/View;->$assertionsDisabled:Z

    .line 654
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 798
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 949
    new-array v0, v3, [I

    sput-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 958
    new-array v0, v4, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 967
    new-array v0, v4, [I

    const v1, 0x101009c

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 976
    new-array v0, v4, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 986
    new-array v0, v4, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 995
    new-array v0, v4, [I

    const v1, 0x101009d

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1004
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1012
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1020
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1028
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1036
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1044
    sget-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1054
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1063
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1072
    sget-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1081
    sget-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1092
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1102
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1111
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1121
    sget-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1130
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1140
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1150
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1161
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1170
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1180
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1190
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1202
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1212
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1224
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1235
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1248
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1254
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1294
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->LAST_STATE_SET:[I

    .line 1300
    new-array v0, v4, [I

    const v1, 0x10100a4

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FIRST_STATE_SET:[I

    .line 1306
    new-array v0, v4, [I

    const v1, 0x10100a5

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->MIDDLE_STATE_SET:[I

    .line 1312
    new-array v0, v4, [I

    const v1, 0x10100a3

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SINGLE_STATE_SET:[I

    .line 1318
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/view/View;->PRESSED_LAST_STATE_SET:[I

    .line 1324
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/view/View;->PRESSED_FIRST_STATE_SET:[I

    .line 1330
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/view/View;->PRESSED_MIDDLE_STATE_SET:[I

    .line 1336
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/view/View;->PRESSED_SINGLE_STATE_SET:[I

    .line 1343
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    .line 1804
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/View;->sInstanceCount:J

    return-void

    :cond_0
    move v0, v3

    .line 596
    goto/16 :goto_0

    .line 654
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 798
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1318
    :array_2
    .array-data 0x4
        0xa6t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1324
    :array_3
    .array-data 0x4
        0xa4t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1330
    :array_4
    .array-data 0x4
        0xa5t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1336
    :array_5
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1383
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1670
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1674
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1676
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1724
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 1733
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1739
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1745
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1751
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1754
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1785
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1791
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2418
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 2142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1383
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1670
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1674
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1676
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1724
    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 1733
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1739
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1745
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1751
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1754
    iput-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1785
    iput-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1791
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2418
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 1819
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 1820
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1821
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 1824
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 1825
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1844
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1845
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1866
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1868
    sget-object v26, Lcom/android/internal/R$styleable;->View:[I

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1871
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1873
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/4 v14, -0x1

    .line 1874
    .local v14, leftPadding:I
    const/16 v20, -0x1

    .line 1875
    .local v20, topPadding:I
    const/16 v16, -0x1

    .line 1876
    .local v16, rightPadding:I
    const/4 v9, -0x1

    .line 1878
    .local v9, bottomPadding:I
    const/4 v15, -0x1

    .line 1880
    .local v15, padding:I
    const/16 v22, 0x0

    .line 1881
    .local v22, viewFlagValues:I
    const/16 v21, 0x0

    .line 1883
    .local v21, viewFlagMasks:I
    const/16 v19, 0x0

    .line 1885
    .local v19, setScrollContainer:Z
    const/16 v24, 0x0

    .line 1886
    .local v24, x:I
    const/16 v25, 0x0

    .line 1888
    .local v25, y:I
    const/16 v17, 0x0

    .line 1890
    .local v17, scrollbarStyle:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 1891
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v5, :cond_2

    .line 1892
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 1893
    .local v7, attr:I
    packed-switch v7, :pswitch_data_0

    .line 1891
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1895
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1896
    goto :goto_1

    .line 1898
    :pswitch_2
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 1899
    goto :goto_1

    .line 1901
    :pswitch_3
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 1902
    goto :goto_1

    .line 1904
    :pswitch_4
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    .line 1905
    goto :goto_1

    .line 1907
    :pswitch_5
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 1908
    goto :goto_1

    .line 1910
    :pswitch_6
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 1911
    goto :goto_1

    .line 1913
    :pswitch_7
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v24

    .line 1914
    goto :goto_1

    .line 1916
    :pswitch_8
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v25

    .line 1917
    goto :goto_1

    .line 1919
    :pswitch_9
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto :goto_1

    .line 1922
    :pswitch_a
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto :goto_1

    .line 1925
    :pswitch_b
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1926
    or-int/lit8 v22, v22, 0x2

    .line 1927
    or-int/lit8 v21, v21, 0x2

    goto/16 :goto_1

    .line 1931
    :pswitch_c
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1932
    or-int/lit8 v22, v22, 0x1

    .line 1933
    or-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1937
    :pswitch_d
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1938
    const v26, 0x40001

    or-int v22, v22, v26

    .line 1939
    const v26, 0x40001

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1943
    :pswitch_e
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1944
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x4000

    move/from16 v22, v0

    .line 1945
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x4000

    move/from16 v21, v0

    goto/16 :goto_1

    .line 1949
    :pswitch_f
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1950
    const/high16 v26, 0x20

    or-int v22, v22, v26

    .line 1951
    const/high16 v26, 0x20

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1955
    :pswitch_10
    const/16 v26, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-nez v26, :cond_0

    .line 1956
    const/high16 v26, 0x1

    or-int v22, v22, v26

    .line 1957
    const/high16 v26, 0x1

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1961
    :pswitch_11
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1962
    const/high16 v26, 0x40

    or-int v22, v22, v26

    .line 1963
    const/high16 v26, 0x40

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1967
    :pswitch_12
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 1968
    .local v23, visibility:I
    if-eqz v23, :cond_0

    .line 1969
    sget-object v26, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v26, v26, v23

    or-int v22, v22, v26

    .line 1970
    or-int/lit8 v21, v21, 0xc

    goto/16 :goto_1

    .line 1974
    .end local v23           #visibility:I
    :pswitch_13
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 1975
    .local v10, cacheQuality:I
    if-eqz v10, :cond_0

    .line 1976
    sget-object v26, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v26, v26, v10

    or-int v22, v22, v26

    .line 1977
    const/high16 v26, 0x18

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1981
    .end local v10           #cacheQuality:I
    :pswitch_14
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1984
    :pswitch_15
    const/16 v26, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-nez v26, :cond_0

    .line 1985
    const v26, -0x8000001

    and-int v22, v22, v26

    .line 1986
    const/high16 v26, 0x800

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1990
    :pswitch_16
    const/16 v26, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-nez v26, :cond_0

    .line 1991
    const v26, -0x10000001

    and-int v22, v22, v26

    .line 1992
    const/high16 v26, 0x1000

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 1996
    :pswitch_17
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 1997
    .local v18, scrollbars:I
    if-eqz v18, :cond_0

    .line 1998
    or-int v22, v22, v18

    .line 1999
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x300

    move/from16 v21, v0

    .line 2000
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 2004
    .end local v18           #scrollbars:I
    :pswitch_18
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2005
    .local v11, fadingEdge:I
    if-eqz v11, :cond_0

    .line 2006
    or-int v22, v22, v11

    .line 2007
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x3000

    move/from16 v21, v0

    .line 2008
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 2012
    .end local v11           #fadingEdge:I
    :pswitch_19
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 2013
    if-eqz v17, :cond_0

    .line 2014
    const/high16 v26, 0x300

    and-int v26, v26, v17

    or-int v22, v22, v26

    .line 2015
    const/high16 v26, 0x300

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 2019
    :pswitch_1a
    const/16 v19, 0x1

    .line 2020
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2021
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 2025
    :pswitch_1b
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2026
    const/high16 v26, 0x400

    or-int v22, v22, v26

    .line 2027
    const/high16 v26, 0x400

    or-int v21, v21, v26

    goto/16 :goto_1

    .line 2031
    :pswitch_1c
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 2034
    :pswitch_1d
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 2037
    :pswitch_1e
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 2040
    :pswitch_1f
    const/16 v26, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 2043
    :pswitch_20
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 2046
    :pswitch_21
    const/16 v26, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 2049
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2050
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2054
    :cond_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2055
    .local v12, handlerName:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 2056
    new-instance v26, Landroid/view/View$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2092
    .end local v7           #attr:I
    .end local v12           #handlerName:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 2093
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2096
    :cond_3
    if-ltz v15, :cond_4

    .line 2097
    move v14, v15

    .line 2098
    move/from16 v20, v15

    .line 2099
    move/from16 v16, v15

    .line 2100
    move v9, v15

    .line 2107
    :cond_4
    if-ltz v14, :cond_a

    move/from16 v26, v14

    :goto_2
    if-ltz v20, :cond_b

    move/from16 v27, v20

    :goto_3
    if-ltz v16, :cond_c

    move/from16 v28, v16

    :goto_4
    if-ltz v9, :cond_d

    move/from16 v29, v9

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2112
    if-eqz v21, :cond_5

    .line 2113
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 2117
    :cond_5
    if-eqz v17, :cond_6

    .line 2118
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 2121
    :cond_6
    if-nez v24, :cond_7

    if-eqz v25, :cond_8

    .line 2122
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 2125
    :cond_8
    if-nez v19, :cond_9

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 2126
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 2129
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2131
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2134
    const-string v26, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 2136
    return-void

    .line 2107
    .restart local p1
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v28, v0

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v29, v0

    goto :goto_5

    .line 1893
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_19
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_b
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_20
        :pswitch_21
        :pswitch_15
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_22
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$302(Landroid/view/View;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    invoke-direct {p0, p1}, Landroid/view/View;->postCheckForLongClick(I)V

    return-void
.end method

.method private static captureViewInfo(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .parameter "subTag"
    .parameter "v"

    .prologue
    .line 3740
    if-eqz p1, :cond_0

    const-string v0, "debug.captureview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3744
    :cond_0
    :goto_0
    return-void

    .line 3743
    :cond_1
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private computeOpaqueFlags()V
    .locals 3

    .prologue
    .line 5219
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 5220
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5225
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5226
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 5228
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5232
    :goto_1
    return-void

    .line 5222
    .end local v0           #flags:I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 5230
    .restart local v0       #flags:I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 8147
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8148
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 8149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8151
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findViewShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 3480
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3481
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 3482
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_0
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8345
    move v0, p0

    .line 8346
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8347
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8349
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 8358
    :goto_0
    return v0

    .line 8351
    :sswitch_0
    move v0, p0

    .line 8352
    goto :goto_0

    .line 8355
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 8349
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 5

    .prologue
    .line 3690
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3691
    .local v1, ancestor:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 3692
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 3693
    .local v2, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 3694
    const/4 v3, 0x1

    .line 3699
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :goto_1
    return v3

    .line 3696
    .restart local v2       #vgAncestor:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3698
    goto :goto_0

    .line 3699
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 8738
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8739
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 2344
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 2345
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2347
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4990
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 7414
    array-length v0, p0

    .line 7415
    .local v0, N:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 7416
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 7417
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7419
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7420
    return-object p0
.end method

.method private postCheckForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    .line 8692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8694
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 8695
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 8697
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 8698
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8700
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 5
    .parameter "flags"

    .prologue
    const-string v4, " "

    .line 6966
    const-string v1, ""

    .line 6967
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 6968
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6970
    add-int/lit8 v0, v0, 0x1

    .line 6973
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 6991
    :goto_0
    return-object v1

    .line 6975
    :sswitch_0
    if-lez v0, :cond_1

    .line 6976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6978
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6980
    goto :goto_0

    .line 6982
    :sswitch_1
    if-lez v0, :cond_2

    .line 6983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6985
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6987
    goto :goto_0

    .line 6973
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 5
    .parameter "privateFlags"

    .prologue
    const-string v4, " "

    .line 7002
    const-string v1, ""

    .line 7003
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7005
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7007
    add-int/lit8 v0, v0, 0x1

    .line 7010
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 7011
    if-lez v0, :cond_1

    .line 7012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7014
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7015
    add-int/lit8 v0, v0, 0x1

    .line 7018
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 7019
    if-lez v0, :cond_3

    .line 7020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7022
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7023
    add-int/lit8 v0, v0, 0x1

    .line 7026
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 7027
    if-lez v0, :cond_5

    .line 7028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7030
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7031
    add-int/lit8 v0, v0, 0x1

    .line 7034
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 7035
    if-lez v0, :cond_7

    .line 7036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7038
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7039
    add-int/lit8 v0, v0, 0x1

    .line 7042
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 7043
    if-lez v0, :cond_9

    .line 7044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7046
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7049
    :cond_a
    return-object v1
.end method

.method private recomputePadding()V
    .locals 4

    .prologue
    .line 5601
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 5602
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 4442
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 4443
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4445
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 4461
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 4462
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4463
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4465
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 4451
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 4452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4453
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4455
    :cond_0
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 2818
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2829
    :cond_0
    :goto_0
    return-void

    .line 2822
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2825
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 2826
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8318
    move v0, p0

    .line 8319
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8320
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8321
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 8332
    :goto_0
    return v0

    .line 8323
    :sswitch_0
    move v0, p0

    .line 8324
    goto :goto_0

    .line 8326
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8327
    goto :goto_0

    .line 8329
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 8321
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "view"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 7987
    const/4 v1, 0x0

    .line 7988
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7989
    :try_start_0
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-nez v2, :cond_1

    .line 7990
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    .line 7994
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7996
    if-nez v1, :cond_0

    .line 7997
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 7998
    .restart local v1       #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v2, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7999
    :try_start_1
    sget-object v3, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8000
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8003
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8004
    return-void

    .line 7992
    :cond_1
    :try_start_2
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_0

    .line 7994
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 8000
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private static stateSetUnion([I[I)[I
    .locals 14
    .parameter "stateSet1"
    .parameter "stateSet2"

    .prologue
    const/4 v13, 0x1

    .line 8704
    array-length v8, p0

    .line 8705
    .local v8, stateSet1Length:I
    array-length v9, p1

    .line 8706
    .local v9, stateSet2Length:I
    add-int v11, v8, v9

    new-array v7, v11, [I

    .line 8707
    .local v7, newSet:[I
    const/4 v4, 0x0

    .line 8708
    .local v4, k:I
    const/4 v1, 0x0

    .line 8709
    .local v1, i:I
    const/4 v3, 0x0

    .line 8712
    .local v3, j:I
    sget-object v0, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_0
    if-ge v2, v6, :cond_2

    aget v10, v0, v2

    .line 8713
    .local v10, viewState:I
    if-ge v1, v8, :cond_0

    aget v11, p0, v1

    if-ne v11, v10, :cond_0

    .line 8714
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8715
    add-int/lit8 v1, v1, 0x1

    .line 8720
    :goto_1
    if-le v4, v13, :cond_1

    .line 8721
    sget-boolean v11, Landroid/view/View;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    sub-int v11, v4, v13

    aget v11, v7, v11

    const/4 v12, 0x2

    sub-int v12, v4, v12

    aget v12, v7, v12

    if-gt v11, v12, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 8716
    .end local v4           #k:I
    .restart local v5       #k:I
    :cond_0
    if-ge v3, v9, :cond_3

    aget v11, p1, v3

    if-ne v11, v10, :cond_3

    .line 8717
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8718
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8712
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_0

    .line 8724
    .end local v10           #viewState:I
    :cond_2
    return-object v7

    .restart local v10       #viewState:I
    :cond_3
    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3510
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3511
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3529
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3541
    :cond_0
    :goto_0
    return-void

    .line 3533
    :cond_1
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3538
    :cond_2
    if-eqz p1, :cond_0

    .line 3539
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 3562
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3564
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 3566
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3568
    :cond_1
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 17
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 8660
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    .line 8661
    .local v3, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 8662
    .local v15, db:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 8663
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_4

    if-eqz v14, :cond_4

    .line 8664
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v11, v4, v5

    .line 8665
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 8666
    .local v7, h:I
    iget v4, v15, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_0

    .line 8668
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8670
    :cond_0
    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ge v4, v11, :cond_1

    .line 8672
    iget v4, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8674
    :cond_1
    iget v4, v15, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    .line 8676
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v15, Landroid/graphics/Rect;->top:I

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8678
    :cond_2
    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v7, :cond_3

    .line 8680
    const/4 v4, 0x0

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8682
    :cond_3
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    move-object/from16 v16, v0

    .line 8683
    .local v16, location:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8684
    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 8685
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 8689
    .end local v7           #h:I
    .end local v11           #w:I
    .end local v16           #location:[I
    :goto_0
    return-void

    .line 8687
    :cond_4
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 5963
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 5964
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5971
    :goto_0
    return-void

    .line 5965
    :cond_0
    if-nez p1, :cond_1

    .line 5966
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 5968
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4977
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 5029
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 9
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5071
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5073
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 5111
    :goto_0
    return v4

    .line 5077
    :cond_1
    iget-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v4, :cond_2

    .line 5078
    new-instance v4, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v4}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5081
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5083
    :cond_3
    if-eqz p2, :cond_4

    .line 5085
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5088
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 5092
    const/16 v0, 0x2ee

    .line 5093
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5098
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 5099
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 5100
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5103
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 5104
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5105
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v8

    .line 5108
    goto :goto_0

    .end local v1           #fadeStartTime:J
    :cond_7
    move v4, v5

    .line 5111
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 4627
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4628
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 4630
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 6403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6404
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 19
    .parameter "autoScale"

    .prologue
    .line 6425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    and-int v17, v17, v18

    if-eqz v17, :cond_0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_4

    .line 6436
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 6437
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 6439
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    .line 6440
    .local v3, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_6

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 6442
    .local v14, scalingRequired:Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v14, :cond_1

    .line 6443
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6444
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 6447
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    move v7, v0

    .line 6448
    .local v7, drawingCacheBackgroundColor:I
    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6449
    .local v10, opaque:Z
    :goto_2
    if-eqz v3, :cond_8

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mTranslucentWindow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 6451
    .local v15, translucentWindow:Z
    :goto_3
    if-lez v16, :cond_3

    if-lez v9, :cond_3

    mul-int v17, v16, v9

    if-eqz v10, :cond_9

    if-nez v15, :cond_9

    const/16 v18, 0x2

    :goto_4
    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 6455
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6565
    .end local v3           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #drawingCacheBackgroundColor:I
    .end local v9           #height:I
    .end local v10           #opaque:Z
    .end local v14           #scalingRequired:Z
    .end local v15           #translucentWindow:Z
    .end local v16           #width:I
    :cond_4
    :goto_5
    return-void

    .line 6425
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_4

    goto/16 :goto_0

    .line 6440
    .restart local v3       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_6
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_1

    .line 6448
    .restart local v7       #drawingCacheBackgroundColor:I
    .restart local v14       #scalingRequired:Z
    :cond_7
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_2

    .line 6449
    .restart local v10       #opaque:Z
    :cond_8
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_3

    .line 6451
    .restart local v15       #translucentWindow:Z
    :cond_9
    const/16 v18, 0x4

    goto :goto_4

    .line 6459
    :cond_a
    const/4 v6, 0x1

    .line 6460
    .local v6, clear:Z
    if-eqz p1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 6463
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-eq v0, v1, :cond_e

    .line 6465
    :cond_b
    if-nez v10, :cond_15

    .line 6466
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x18

    and-int v17, v17, v18

    sparse-switch v17, :sswitch_data_0

    .line 6477
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6487
    .local v11, quality:Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 6490
    :cond_c
    :try_start_0
    move/from16 v0, v16

    move v1, v9

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6491
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6492
    if-eqz p1, :cond_17

    .line 6493
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6497
    :goto_8
    if-eqz v10, :cond_d

    if-eqz v15, :cond_d

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6510
    :cond_d
    if-eqz v7, :cond_19

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 6514
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_e
    :goto_9
    if-eqz v3, :cond_1a

    .line 6515
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6516
    .local v5, canvas:Landroid/graphics/Canvas;
    if-nez v5, :cond_f

    .line 6517
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 6519
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_f
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6524
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6530
    :goto_a
    if-eqz v6, :cond_10

    .line 6531
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6534
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 6535
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 6537
    .local v12, restoreCount:I
    if-eqz p1, :cond_11

    if-eqz v14, :cond_11

    .line 6538
    iget v13, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 6539
    .local v13, scale:F
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6542
    .end local v13           #scale:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6544
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6545
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6548
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 6552
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, -0x600001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6553
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6558
    :goto_b
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6560
    if-eqz v3, :cond_4

    .line 6562
    iput-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 6460
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #restoreCount:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    const/16 v17, 0x0

    move-object/from16 v4, v17

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 6468
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6469
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6471
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 6472
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6474
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_2
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6475
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6483
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_15
    if-eqz v15, :cond_16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    goto :goto_c

    .line 6495
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 6498
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 6502
    .local v8, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    .line 6503
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_5

    .line 6505
    :cond_18
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_5

    .line 6510
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_19
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_9

    .line 6527
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 6555
    .restart local v12       #restoreCount:I
    :cond_1b
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 6466
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_2
    .end sparse-switch
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 4474
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4481
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4482
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4257
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 8456
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 8457
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 8459
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8460
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2609
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2610
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2612
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 2616
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2617
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2619
    :cond_1
    return-void
.end method

.method clearFocusForRemoval()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2627
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2628
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2630
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2631
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2633
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 5728
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 5707
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 5686
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 5410
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 5789
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 5768
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 5747
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 4267
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 4271
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4273
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 4274
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 4275
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4280
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4282
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 4283
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 4285
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    .line 6572
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v8, v9

    .line 6573
    .local v7, width:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 6575
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6576
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v8, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v6, v8

    .line 6577
    .local v6, scale:F
    :goto_0
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 6578
    int-to-float v8, v4

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 6580
    if-lez v7, :cond_1

    move v8, v7

    :goto_1
    if-lez v4, :cond_2

    move v9, v4

    :goto_2
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6581
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 6582
    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v8

    .line 6576
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_0
    const/high16 v8, 0x3f80

    move v6, v8

    goto :goto_0

    .restart local v6       #scale:F
    :cond_1
    move v8, v11

    .line 6580
    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    .line 6585
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6588
    if-eqz v0, :cond_7

    .line 6589
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6590
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_4

    .line 6591
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 6593
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6598
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6604
    :goto_3
    const/high16 v8, -0x100

    and-int/2addr v8, p2

    if-eqz v8, :cond_5

    .line 6605
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6608
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 6609
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 6610
    .local v5, restoreCount:I
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6611
    iget v8, p0, Landroid/view/View;->mScrollX:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6614
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6615
    .local v3, flags:I
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6618
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_8

    .line 6619
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6624
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6626
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6628
    if-eqz v0, :cond_6

    .line 6630
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6633
    :cond_6
    return-object v1

    .line 6601
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v5           #restoreCount:I
    :cond_7
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 6621
    .restart local v3       #flags:I
    .restart local v5       #restoreCount:I
    :cond_8
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 8067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 8068
    return-void
.end method

.method protected debug(I)V
    .locals 9
    .parameter "depth"

    .prologue
    const-string v8, ")"

    const-string/jumbo v7, "}"

    const-string v6, ", "

    const-string v5, "View"

    .line 8080
    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8082
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8083
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 8084
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 8085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8087
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 8088
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 8089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8091
    :cond_1
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8093
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 8094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8095
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8098
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8102
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8104
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 8106
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8109
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8112
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8115
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8117
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8118
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 8119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8123
    :goto_0
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8125
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8129
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8131
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8135
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8136
    return-void

    .line 8121
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6358
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 6359
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6361
    :cond_0
    iput-object v2, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6363
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    .line 6364
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6365
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6366
    :cond_2
    iput-object v2, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6368
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 3
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 6058
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6059
    iget v1, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 6060
    iget-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    .line 6061
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 6062
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 6064
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 6065
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6066
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6068
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 6069
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6070
    iget v0, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6071
    .local v0, vis:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6072
    invoke-virtual {p0, v0}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6074
    :cond_2
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4041
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 4042
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 4020
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4021
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 1
    .parameter "consistency"

    .prologue
    .line 8012
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 6078
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6079
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 6080
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6081
    .local v1, vis:I
    if-eq v1, v2, :cond_0

    .line 6082
    invoke-virtual {p0, v2}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6086
    .end local v1           #vis:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6087
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 6088
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6089
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6091
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6092
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 3920
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 3921
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 4672
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 3724
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3725
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3788
    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3790
    const/4 v0, 0x1

    .line 3793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3767
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3804
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2767
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6185
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6186
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6187
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 6190
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6191
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6192
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 6193
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6198
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6119
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 6120
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6121
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 6122
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 6123
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6126
    :cond_0
    if-eqz v0, :cond_1

    .line 6129
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6132
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3346
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 7678
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 3706
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3707
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3815
    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3817
    const/4 v0, 0x1

    .line 3819
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3830
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3450
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 3890
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3891
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3841
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 3842
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 3944
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 3945
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 41
    .parameter "canvas"

    .prologue
    .line 6746
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v29, v0

    .line 6747
    .local v29, privateFlags:I
    const/high16 v3, 0x60

    and-int v3, v3, v29

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v13, v3

    .line 6749
    .local v13, dirtyOpaque:Z
    :goto_0
    const v3, -0x600001

    and-int v3, v3, v29

    or-int/lit8 v3, v3, 0x20

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6766
    if-nez v13, :cond_2

    .line 6767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 6768
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 6769
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 6770
    .local v33, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 6772
    .local v34, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 6773
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6774
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6777
    :cond_1
    or-int v3, v33, v34

    if-nez v3, :cond_5

    .line 6778
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6788
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v40, v0

    .line 6789
    .local v40, viewFlags:I
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x1000

    move v3, v0

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 6790
    .local v21, horizontalEdges:Z
    :goto_2
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 6791
    .local v39, verticalEdges:Z
    :goto_3
    if-nez v39, :cond_8

    if-nez v21, :cond_8

    .line 6793
    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6796
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6799
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 6942
    :goto_4
    return-void

    .line 6747
    .end local v13           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v39           #verticalEdges:Z
    .end local v40           #viewFlags:I
    :cond_4
    const/4 v3, 0x0

    move v13, v3

    goto :goto_0

    .line 6780
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dirtyOpaque:Z
    .restart local v33       #scrollX:I
    .restart local v34       #scrollY:I
    :cond_5
    move/from16 v0, v33

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6781
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6782
    move/from16 v0, v33

    neg-int v0, v0

    move v3, v0

    int-to-float v3, v3

    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 6789
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    .restart local v40       #viewFlags:I
    :cond_6
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_2

    .line 6790
    .restart local v21       #horizontalEdges:Z
    :cond_7
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_3

    .line 6812
    .restart local v39       #verticalEdges:Z
    :cond_8
    const/16 v17, 0x0

    .line 6813
    .local v17, drawTop:Z
    const/4 v14, 0x0

    .line 6814
    .local v14, drawBottom:Z
    const/4 v15, 0x0

    .line 6815
    .local v15, drawLeft:Z
    const/16 v16, 0x0

    .line 6817
    .local v16, drawRight:Z
    const/16 v38, 0x0

    .line 6818
    .local v38, topFadeStrength:F
    const/4 v12, 0x0

    .line 6819
    .local v12, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 6820
    .local v23, leftFadeStrength:F
    const/16 v31, 0x0

    .line 6823
    .local v31, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 6824
    .local v27, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    .line 6826
    .local v28, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 6827
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_9

    .line 6828
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v3

    add-int v27, v27, v3

    .line 6829
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v3

    add-int v28, v28, v3

    .line 6832
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    add-int v22, v3, v27

    .line 6833
    .local v22, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v30, v3, v27

    .line 6834
    .local v30, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    add-int v37, v3, v28

    .line 6835
    .local v37, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v11, v3, v28

    .line 6837
    .local v11, bottom:I
    if-eqz v26, :cond_a

    .line 6838
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v3

    add-int v30, v30, v3

    .line 6839
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v3

    add-int/2addr v11, v3

    .line 6842
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v35, v0

    .line 6843
    .local v35, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move/from16 v24, v0

    .line 6847
    .local v24, length:I
    if-eqz v39, :cond_b

    add-int v3, v37, v24

    sub-int v4, v11, v24

    if-le v3, v4, :cond_b

    .line 6848
    sub-int v3, v11, v37

    div-int/lit8 v24, v3, 0x2

    .line 6852
    :cond_b
    if-eqz v21, :cond_c

    add-int v3, v22, v24

    sub-int v4, v30, v24

    if-le v3, v4, :cond_c

    .line 6853
    sub-int v3, v30, v22

    div-int/lit8 v24, v3, 0x2

    .line 6856
    :cond_c
    if-eqz v39, :cond_d

    .line 6857
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .line 6858
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-ltz v3, :cond_18

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 6859
    :goto_5
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 6860
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-ltz v3, :cond_19

    const/4 v3, 0x1

    move v14, v3

    .line 6863
    :cond_d
    :goto_6
    if-eqz v21, :cond_e

    .line 6864
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 6865
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-ltz v3, :cond_1a

    const/4 v3, 0x1

    move v15, v3

    .line 6866
    :goto_7
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 6867
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-ltz v3, :cond_1b

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 6870
    :cond_e
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v32

    .line 6872
    .local v32, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v36

    .line 6873
    .local v36, solidColor:I
    if-nez v36, :cond_1c

    .line 6874
    const/16 v20, 0x4

    .line 6876
    .local v20, flags:I
    if-eqz v17, :cond_f

    .line 6877
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 6880
    :cond_f
    if-eqz v14, :cond_10

    .line 6881
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 6884
    :cond_10
    if-eqz v15, :cond_11

    .line 6885
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 6888
    :cond_11
    if-eqz v16, :cond_12

    .line 6889
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 6896
    .end local v20           #flags:I
    :cond_12
    :goto_9
    if-nez v13, :cond_13

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6899
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6902
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 6903
    .local v8, p:Landroid/graphics/Paint;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 6904
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v18, v0

    .line 6905
    .local v18, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 6907
    .local v19, fadeHeight:F
    if-eqz v17, :cond_14

    .line 6908
    const/high16 v3, 0x3f80

    mul-float v4, v19, v38

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6909
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6910
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6911
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6914
    :cond_14
    if-eqz v14, :cond_15

    .line 6915
    const/high16 v3, 0x3f80

    mul-float v4, v19, v12

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6916
    const/high16 v3, 0x4334

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6917
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6918
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6919
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6922
    :cond_15
    if-eqz v15, :cond_16

    .line 6923
    const/high16 v3, 0x3f80

    mul-float v4, v19, v23

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6924
    const/high16 v3, -0x3d4c

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6925
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6926
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6927
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6930
    :cond_16
    if-eqz v16, :cond_17

    .line 6931
    const/high16 v3, 0x3f80

    mul-float v4, v19, v31

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6932
    const/high16 v3, 0x42b4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6933
    move/from16 v0, v30

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6934
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6935
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6938
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6941
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 6858
    .end local v8           #p:Landroid/graphics/Paint;
    .end local v18           #fade:Landroid/graphics/Shader;
    .end local v19           #fadeHeight:F
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v32           #saveCount:I
    .end local v36           #solidColor:I
    :cond_18
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_5

    .line 6860
    :cond_19
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_6

    .line 6865
    :cond_1a
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_7

    .line 6867
    :cond_1b
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_8

    .line 6892
    .restart local v32       #saveCount:I
    .restart local v36       #solidColor:I
    :cond_1c
    invoke-virtual/range {v35 .. v36}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_9
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 7285
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7286
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7287
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7289
    :cond_0
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 2849
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3462
    sparse-switch p2, :sswitch_data_0

    move-object v0, v1

    .line 3476
    :goto_0
    return-object v0

    .line 3464
    :sswitch_0
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3465
    :cond_0
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3467
    :sswitch_1
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 3468
    :cond_1
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3470
    :sswitch_2
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne v0, v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 3471
    :cond_2
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3473
    :sswitch_3
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne v0, v2, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 3474
    :cond_3
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3462
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 7814
    if-gez p1, :cond_0

    .line 7815
    const/4 v0, 0x0

    .line 7817
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 7788
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7791
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 7828
    if-nez p1, :cond_0

    .line 7829
    const/4 v0, 0x0

    .line 7831
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 7800
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 7803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "insets"

    .prologue
    .line 3049
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3050
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3051
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 3052
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 3053
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 3054
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3055
    const/4 v0, 0x1

    .line 3057
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 3431
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3432
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3434
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    .prologue
    .line 8190
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8191
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 8535
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8536
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 8537
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8538
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 8541
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 8542
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8543
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8552
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_0
    :goto_0
    return v9

    .line 8545
    .restart local v8       #pflags:I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 8549
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 8438
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 6032
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6033
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 6034
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 6035
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 6036
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_0
    move-object v2, v1

    .line 6040
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 7547
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8164
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4780
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 5507
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 6730
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4085
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4298
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 7320
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 7321
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7325
    :goto_0
    return-object v0

    .line 7323
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7324
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7325
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 6306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "autoScale"

    .prologue
    const/high16 v3, 0x2

    const v2, 0x8000

    const/4 v1, 0x0

    .line 6337
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move-object v0, v1

    .line 6343
    .end local p0
    :goto_0
    return-object v0

    .line 6340
    .restart local p0
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 6341
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6343
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 6394
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 2887
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 4735
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4736
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4737
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4738
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4739
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 6229
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3496
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3497
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 3498
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 4823
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4824
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 4854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v4, 0x0

    .line 4841
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v2, v3

    .line 4842
    .local v1, width:I
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int v0, v2, v3

    .line 4843
    .local v0, height:I
    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 4844
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4845
    if-eqz p2, :cond_0

    .line 4846
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 4848
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 4850
    :goto_0
    return v2

    :cond_2
    move v2, v4

    .line 4848
    goto :goto_0

    :cond_3
    move v2, v4

    .line 4850
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 5246
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5247
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4724
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 4809
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4810
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 2213
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2214
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2215
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 2216
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2219
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2251
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2252
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_1

    .line 2253
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2254
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_1

    .line 2255
    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2256
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 2257
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    move v3, v2

    .line 2263
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_1
    return v3
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7886
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 2918
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 3753
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 4896
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4790
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 5522
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 6688
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 4858
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4859
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4860
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 4861
    const/4 v1, 0x1

    .line 4863
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7759
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 7760
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7764
    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    aput v4, p1, v8

    .line 7765
    iget v4, p0, Landroid/view/View;->mTop:I

    aput v4, p1, v7

    .line 7767
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7768
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 7769
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 7770
    .local v1, view:Landroid/view/View;
    aget v4, p1, v8

    iget v5, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 7771
    aget v4, p1, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v7

    .line 7772
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7773
    goto :goto_0

    .line 7775
    .end local v1           #view:Landroid/view/View;
    :cond_2
    instance-of v4, v2, Landroid/view/ViewRoot;

    if-eqz v4, :cond_3

    .line 7777
    move-object v0, v2

    check-cast v0, Landroid/view/ViewRoot;

    move-object v3, v0

    .line 7778
    .local v3, vr:Landroid/view/ViewRoot;
    aget v4, p1, v7

    iget v5, v3, Landroid/view/ViewRoot;->mCurScrollY:I

    sub-int/2addr v4, v5

    aput v4, p1, v7

    .line 7780
    .end local v3           #vr:Landroid/view/ViewRoot;
    :cond_3
    return-void
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 7742
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7744
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7745
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 7746
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7747
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7749
    :cond_0
    return-void
.end method

.method public final getMeasuredHeight()I
    .locals 1

    .prologue
    .line 4760
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 4749
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 3001
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 2941
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 2961
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 2981
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 7627
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 7638
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 7649
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 7616
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 4681
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 7192
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4800
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 5536
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 6702
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 7718
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 7719
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 7720
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 7731
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v2

    .line 7725
    :cond_0
    move-object v0, p0

    .line 7727
    .local v0, parent:Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 7728
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 7731
    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2

    .prologue
    .line 5665
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 4693
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 4704
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6956
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundEffect()I
    .locals 1

    .prologue
    .line 2441
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 8373
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 8375
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 8376
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 8377
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_0

    .line 8378
    move v1, v0

    .line 8382
    .end local v0           #bgMinHeight:I
    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 8397
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 8399
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 8400
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 8401
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_0

    .line 8402
    move v1, v0

    .line 8406
    .end local v0           #bgMinWidth:I
    :cond_0
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7899
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 7928
    const/4 v1, 0x0

    .line 7929
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7930
    :try_start_0
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 7931
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 7933
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7935
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 7936
    :goto_0
    return-object v2

    .line 7933
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7936
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4770
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 5493
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 6716
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 4495
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3551
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3552
    return-object v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 2181
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2182
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2183
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 2184
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2187
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2229
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2230
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_1

    .line 2231
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2232
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_1

    .line 2233
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2234
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 2235
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    move v3, v2

    .line 2241
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_1
    return v3
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 7703
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7704
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7709
    :goto_0
    return-object v0

    .line 7706
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 7707
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7709
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3072
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4714
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 6009
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 6049
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6018
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 3970
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "outRect"

    .prologue
    const/4 v5, 0x0

    .line 3990
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 3992
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3999
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4000
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 4001
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 4002
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 4003
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 4008
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3993
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3994
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 4006
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4007
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2535
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 2536
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2538
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2542
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2543
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2545
    :cond_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2660
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 2676
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 5238
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 3878
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 2165
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2167
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2170
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2278
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2280
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2282
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_0

    .line 2283
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2286
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2288
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1

    .line 2289
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 2291
    :cond_1
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 2294
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 2297
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 2302
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 2306
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2307
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2309
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2310
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 2311
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2314
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2316
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_3

    .line 2317
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 2320
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2321
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2323
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2324
    if-eqz v3, :cond_4

    .line 2325
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2328
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2330
    if-eqz v0, :cond_5

    .line 2331
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 2335
    :cond_5
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 2336
    return-void
.end method

.method public invalidate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5183
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 5184
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8021

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5185
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5186
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5187
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5188
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5189
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5192
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5195
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5159
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 5160
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5161
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5162
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5163
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 5164
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 5165
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 5166
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5167
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5168
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5171
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    .end local v4           #tmpr:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "dirty"

    .prologue
    .line 5128
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 5129
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5130
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5131
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5132
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5133
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 5134
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 5135
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5136
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5138
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5141
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 7201
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7203
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 7204
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 7206
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 7209
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    return-void
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3275
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const v1, 0x8000

    .line 6295
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 6264
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3095
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3405
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 3418
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2838
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 3216
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 5423
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 5550
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 6652
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4070
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4071
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4073
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 7059
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 3302
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 5210
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 6674
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 3360
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 7871
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 3373
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 5628
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7687
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3021
    move-object v1, p0

    .line 3024
    .local v1, current:Landroid/view/View;
    :cond_0
    iget v3, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_1

    move v3, v4

    .line 3037
    :goto_0
    return v3

    .line 3027
    :cond_1
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3028
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_2

    move v3, v4

    .line 3029
    goto :goto_0

    .line 3031
    :cond_2
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_3

    .line 3032
    const/4 v3, 0x1

    goto :goto_0

    .line 3034
    :cond_3
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3035
    if-nez v1, :cond_0

    move v3, v4

    .line 3037
    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 3187
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 5458
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 5580
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 5905
    const/4 v0, 0x0

    return v0
.end method

.method public final layout(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 7082
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 7083
    .local v1, changed:Z
    if-nez v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7088
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7089
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7091
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7092
    return-void
.end method

.method public final measure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8214
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2

    .line 8219
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8226
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8230
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 8231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8236
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8239
    :cond_2
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 8240
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 8241
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 4053
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4054
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 4055
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 4056
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4059
    :cond_1
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 4882
    iget v0, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mLeft:I

    .line 4883
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 4884
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 4872
    iget v0, p0, Landroid/view/View;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mTop:I

    .line 4873
    iget v0, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 4874
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 8501
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8502
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 8489
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8490
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 5983
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 5984
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 5986
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5987
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 5988
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5990
    :cond_1
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 4227
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 8640
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 4034
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 9
    .parameter "consistency"

    .prologue
    const v8, 0x8000

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "ViewConsistency"

    const-string v5, "View "

    .line 8026
    const/4 v2, 0x1

    .line 8028
    .local v2, result:Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    move v1, v7

    .line 8029
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_4

    move v0, v7

    .line 8031
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 8032
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8033
    const/4 v2, 0x0

    .line 8034
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a parent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8038
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    .line 8039
    const/4 v2, 0x0

    .line 8040
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached to a window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8045
    :cond_1
    if-eqz v0, :cond_2

    .line 8049
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_2

    .line 8051
    const/4 v2, 0x0

    .line 8052
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was invalidated but its drawing cache is valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8057
    :cond_2
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_3
    move v1, v4

    .line 8028
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_4
    move v0, v4

    .line 8029
    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4308
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 9
    .parameter "extraSpace"

    .prologue
    const/high16 v6, 0x40

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7345
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 7347
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 7393
    :goto_0
    return-object v5

    .line 7352
    .restart local p0
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7354
    .local v3, privateFlags:I
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_1

    move v4, v8

    .line 7356
    .local v4, viewStateIndex:I
    :goto_1
    shl-int/lit8 v5, v4, 0x1

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    move v6, v8

    :goto_2
    add-int v4, v5, v6

    .line 7359
    shl-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    :goto_3
    add-int v4, v5, v6

    .line 7361
    shl-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_4

    move v6, v8

    :goto_4
    add-int v4, v5, v6

    .line 7364
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 7365
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v5, v4, 0x1

    if-eqz v2, :cond_5

    move v6, v8

    :goto_5
    add-int v4, v5, v6

    .line 7367
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 7381
    .local v0, drawableState:[I
    if-nez p1, :cond_6

    move-object v5, v0

    .line 7382
    goto :goto_0

    .end local v0           #drawableState:[I
    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_1
    move v4, v7

    .line 7354
    goto :goto_1

    .restart local v4       #viewStateIndex:I
    :cond_2
    move v6, v7

    .line 7356
    goto :goto_2

    :cond_3
    move v6, v7

    .line 7359
    goto :goto_3

    :cond_4
    move v6, v7

    .line 7361
    goto :goto_4

    .restart local v2       #hasWindowFocus:Z
    :cond_5
    move v6, v7

    .line 7365
    goto :goto_5

    .line 7386
    .restart local v0       #drawableState:[I
    :cond_6
    if-eqz v0, :cond_7

    .line 7387
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 7388
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v5, v1

    .line 7393
    goto :goto_0

    .line 7390
    .end local v1           #fullState:[I
    :cond_7
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_6
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 4243
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 5999
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6000
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 6001
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6002
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6003
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 3933
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 5956
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5925
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5926
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5927
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object v12, v0

    .line 5803
    .local v12, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v12, :cond_0

    .line 5805
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v21, v0

    .line 5807
    .local v21, state:I
    if-nez v21, :cond_1

    .line 5896
    .end local v21           #state:I
    :cond_0
    :goto_0
    return-void

    .line 5811
    .restart local v21       #state:I
    :cond_1
    const/16 v17, 0x0

    .line 5813
    .local v17, invalidate:Z
    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 5815
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v5, :cond_2

    .line 5816
    const/4 v5, 0x1

    new-array v5, v5, [F

    iput-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 5819
    :cond_2
    move-object v0, v12

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v22, v0

    .line 5822
    .local v22, values:[F
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_6

    .line 5824
    const/4 v5, 0x0

    iput v5, v12, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5832
    :goto_1
    const/16 v17, 0x1

    .line 5840
    .end local v22           #values:[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v24, v0

    .line 5842
    .local v24, viewFlags:I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x100

    move v5, v0

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    move v13, v5

    .line 5844
    .local v13, drawHorizontalScrollBar:Z
    :goto_3
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move v14, v5

    .line 5848
    .local v14, drawVerticalScrollBar:Z
    :goto_4
    if-nez v14, :cond_3

    if-eqz v13, :cond_0

    .line 5849
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int v25, v5, v6

    .line 5850
    .local v25, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int v15, v5, v6

    .line 5852
    .local v15, height:I
    iget-object v7, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5853
    .local v7, scrollBar:Landroid/widget/ScrollBarDrawable;
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v20

    .line 5854
    .local v20, size:I
    if-gtz v20, :cond_4

    .line 5855
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v20, v0

    .line 5858
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    .line 5859
    .local v18, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    .line 5860
    .local v19, scrollY:I
    const/high16 v5, 0x200

    and-int v5, v5, v24

    if-nez v5, :cond_a

    const/4 v5, -0x1

    move/from16 v16, v5

    .line 5864
    .local v16, inside:I
    :goto_5
    if-eqz v13, :cond_5

    .line 5865
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 5868
    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v5

    move/from16 v23, v5

    .line 5870
    .local v23, verticalScrollBarGap:I
    :goto_6
    add-int v5, v19, v15

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v9, v5, v6

    .line 5871
    .local v9, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v18, v5

    .line 5872
    .local v8, left:I
    add-int v5, v18, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int/2addr v5, v6

    sub-int v10, v5, v23

    .line 5873
    .local v10, right:I
    add-int v11, v9, v20

    .local v11, bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 5874
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 5875
    if-eqz v17, :cond_5

    .line 5876
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 5880
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v23           #verticalScrollBarGap:I
    :cond_5
    if-eqz v14, :cond_0

    .line 5881
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 5885
    add-int v5, v18, v25

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v8, v5, v6

    .line 5886
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    and-int v5, v5, v16

    add-int v9, v19, v5

    .line 5887
    .restart local v9       #top:I
    add-int v10, v8, v20

    .line 5888
    .restart local v10       #right:I
    add-int v5, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v11, v5, v6

    .restart local v11       #bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 5889
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 5890
    if-eqz v17, :cond_0

    .line 5891
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5826
    .end local v7           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v13           #drawHorizontalScrollBar:Z
    .end local v14           #drawVerticalScrollBar:Z
    .end local v15           #height:I
    .end local v16           #inside:I
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    .end local v20           #size:I
    .end local v24           #viewFlags:I
    .end local v25           #width:I
    .restart local v22       #values:[F
    :cond_6
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v6, 0x0

    aget v6, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 5836
    .end local v22           #values:[F
    :cond_7
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 5842
    .restart local v24       #viewFlags:I
    :cond_8
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_3

    .line 5844
    .restart local v13       #drawHorizontalScrollBar:Z
    :cond_9
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_4

    .line 5860
    .restart local v7       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v14       #drawVerticalScrollBar:Z
    .restart local v15       #height:I
    .restart local v18       #scrollX:I
    .restart local v19       #scrollY:I
    .restart local v20       #size:I
    .restart local v25       #width:I
    :cond_a
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_5

    .line 5868
    .restart local v16       #inside:I
    :cond_b
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_6
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5946
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5947
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5948
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 7184
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 3732
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2698
    if-eqz p1, :cond_0

    .line 2699
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2702
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2703
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 2704
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2705
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2707
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_2

    .line 2709
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 2711
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 2717
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2718
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_4

    .line 2719
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 2722
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    .line 2723
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 2725
    :cond_5
    return-void

    .line 2712
    :cond_6
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_3

    .line 2714
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 2814
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 2815
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x20

    .line 4115
    const/4 v0, 0x0

    .line 4117
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v1, v0

    .line 4136
    :goto_0
    return v1

    .line 4120
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 4121
    goto :goto_0

    .line 4124
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4127
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4128
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 4129
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/View;->postCheckForLongClick(I)V

    :cond_3
    move v1, v4

    .line 4131
    goto :goto_0

    .line 4117
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4145
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4194
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4101
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4206
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4159
    const/4 v0, 0x0

    .line 4161
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 4180
    :goto_1
    return v1

    .line 4164
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 4165
    const/4 v1, 0x1

    goto :goto_1

    .line 4167
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4168
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4170
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 4172
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4174
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0

    .line 4161
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8290
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8292
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 6213
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6214
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 6215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6221
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 6156
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6157
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 4644
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 4646
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4647
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 4648
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 4650
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 8516
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 4663
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 3716
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 3717
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3718
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4333
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4335
    .local v3, viewFlags:I
    and-int/lit8 v6, v3, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 4338
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_0

    and-int v6, v3, v10

    if-ne v6, v10, :cond_1

    :cond_0
    move v6, v9

    .line 4435
    :goto_0
    return v6

    :cond_1
    move v6, v8

    .line 4338
    goto :goto_0

    .line 4342
    :cond_2
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v6, :cond_3

    .line 4343
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v6, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    .line 4344
    goto :goto_0

    .line 4348
    :cond_3
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_4

    and-int v6, v3, v10

    if-ne v6, v10, :cond_10

    .line 4350
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_1
    move v6, v9

    .line 4432
    goto :goto_0

    .line 4352
    :pswitch_0
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    move v1, v9

    .line 4353
    .local v1, prepressed:Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_6

    if-eqz v1, :cond_5

    .line 4356
    :cond_6
    const/4 v0, 0x0

    .line 4357
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4358
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 4361
    :cond_7
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_9

    .line 4363
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4366
    if-nez v0, :cond_9

    .line 4370
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_8

    .line 4371
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 4373
    :cond_8
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 4374
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 4379
    :cond_9
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_a

    .line 4380
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 4383
    :cond_a
    if-eqz v1, :cond_d

    .line 4384
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4385
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4386
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4392
    :cond_b
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :cond_c
    move v1, v8

    .line 4352
    goto :goto_2

    .line 4388
    .restart local v0       #focusTaken:Z
    .restart local v1       #prepressed:Z
    :cond_d
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 4390
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 4397
    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :pswitch_1
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_e

    .line 4398
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 4400
    :cond_e
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4401
    iput-boolean v8, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 4402
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 4406
    :pswitch_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4407
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4408
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_1

    .line 4412
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 4413
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 4416
    .local v5, y:I
    iget v2, p0, Landroid/view/View;->mTouchSlop:I

    .line 4417
    .local v2, slop:I
    sub-int v6, v8, v2

    if-lt v4, v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_f

    sub-int v6, v8, v2

    if-lt v5, v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_5

    .line 4420
    :cond_f
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4421
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_5

    .line 4423
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4426
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4427
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_1

    .end local v2           #slop:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_10
    move v6, v8

    .line 4435
    goto/16 :goto_0

    .line 4350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4323
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 3901
    if-nez p2, :cond_0

    .line 3902
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 3903
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 3908
    :cond_0
    :goto_0
    return-void

    .line 3905
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 3855
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3856
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_3

    .line 3857
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3858
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3860
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3861
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3863
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 3864
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 3868
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3869
    return-void

    .line 3865
    :cond_3
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3866
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 3958
    if-nez p1, :cond_0

    .line 3959
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 3961
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2454
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2456
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2459
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2461
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 2465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCollectViewAttributes(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 4046
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    or-int/2addr v0, p1

    const v1, 0x400000c

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 4048
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4050
    :cond_0
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 8609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 8622
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move v0, v2

    .line 8629
    :goto_0
    return v0

    .line 8625
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 8627
    goto :goto_0

    .line 8629
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 2476
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2478
    const/4 v0, 0x0

    .line 2479
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 2482
    :cond_0
    if-nez v0, :cond_1

    .line 2483
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 2485
    :cond_1
    if-eqz v0, :cond_2

    .line 2486
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2488
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 3
    .parameter "soundConstant"

    .prologue
    .line 8568
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8591
    :cond_0
    :goto_0
    return-void

    .line 8574
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 8575
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 8578
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 8579
    .local v0, ringerMode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 8585
    if-ltz p1, :cond_0

    .line 8590
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v1, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 5264
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5265
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5272
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5268
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 5269
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 5293
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5294
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5301
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5297
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5298
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 5335
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 5336
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5351
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 5352
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 2
    .parameter "delayMilliseconds"

    .prologue
    .line 5364
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5365
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5366
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5367
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5368
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5370
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5388
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 5389
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    .line 5390
    .local v0, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 5391
    iput p3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 5392
    iput p4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 5393
    iput p5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 5394
    iput p6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 5396
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5397
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5398
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5399
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5401
    .end local v0           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 7300
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7301
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7303
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7304
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 7305
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 7307
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 5316
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5317
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5324
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5325
    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5320
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5321
    goto :goto_0
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 3587
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 3609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3642
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 3659
    :goto_0
    return v0

    .line 3648
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 3650
    goto :goto_0

    .line 3654
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 3655
    goto :goto_0

    .line 3658
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v2

    .line 3659
    goto :goto_0
.end method

.method public final requestFocusFromTouch()Z
    .locals 3

    .prologue
    .line 3674
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3675
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3676
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3677
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRoot;

    .line 3678
    .local v1, viewRoot:Landroid/view/ViewRoot;
    if-eqz v1, :cond_0

    .line 3679
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 3683
    .end local v0           #root:Landroid/view/View;
    .end local v1           #viewRoot:Landroid/view/ViewRoot;
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 8177
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8179
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8180
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 8182
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 2559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 6
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2578
    move-object v1, p0

    .line 2579
    .local v1, child:Landroid/view/View;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2580
    .local v2, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 2581
    .local v3, scrolled:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2582
    invoke-interface {v2, v1, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2587
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2588
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2590
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_1

    .line 2597
    :cond_0
    return v3

    .line 2594
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2595
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6170
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 6171
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6104
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 6105
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 7220
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7221
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 7223
    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4944
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 4945
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4924
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 4925
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 4926
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 4927
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 4928
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 4929
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 4930
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4931
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4934
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 2731
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2732
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2734
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2741
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2742
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2743
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2745
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 2746
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 2747
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2748
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2749
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2750
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2753
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2755
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2756
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 8474
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8475
    if-eqz p1, :cond_0

    .line 8476
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8478
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7429
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7430
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7464
    const/4 v1, 0x0

    .line 7466
    .local v1, requestLayout:Z
    iput v6, p0, Landroid/view/View;->mBackgroundResource:I

    .line 7472
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 7473
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7474
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7477
    :cond_0
    if-eqz p1, :cond_9

    .line 7478
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 7479
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 7480
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7481
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7483
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7484
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 7489
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 7491
    :cond_3
    const/4 v1, 0x1

    .line 7494
    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7495
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7496
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7498
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    move v2, v7

    :goto_0
    invoke-virtual {p1, v2, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7499
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7501
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 7502
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7503
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7504
    const/4 v1, 0x1

    .line 7532
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7534
    if-eqz v1, :cond_7

    .line 7535
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7538
    :cond_7
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7539
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7540
    return-void

    .restart local v0       #padding:Landroid/graphics/Rect;
    :cond_8
    move v2, v6

    .line 7498
    goto :goto_0

    .line 7508
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_9
    iput-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7510
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_a

    .line 7516
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7517
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7529
    :cond_a
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7440
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 7451
    :goto_0
    return-void

    .line 7444
    :cond_0
    const/4 v0, 0x0

    .line 7445
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 7446
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7448
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7450
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 3290
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3291
    return-void

    .line 3290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "contentDescription"

    .prologue
    .line 2797
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 2798
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 6382
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 6383
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 6384
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6386
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    .line 6282
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6283
    return-void

    .line 6282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2904
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 2905
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 6251
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6252
    return-void

    .line 6251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 3106
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3119
    :goto_0
    return-void

    .line 3108
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3114
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3108
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 2200
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2201
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2202
    return-void
.end method

.method setFlags(II)V
    .locals 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 4505
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 4506
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4508
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 4509
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 4620
    :cond_0
    :goto_0
    return-void

    .line 4512
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4515
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    .line 4517
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_e

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_e

    .line 4520
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4531
    :cond_2
    :goto_1
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_3

    .line 4532
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_3

    .line 4537
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4539
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4545
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_3

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_3

    .line 4546
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 4552
    :cond_3
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_6

    .line 4553
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4554
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4555
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4557
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 4558
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4559
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4561
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_6

    .line 4562
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4567
    :cond_6
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_8

    .line 4568
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4569
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4571
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4573
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_7

    .line 4574
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4577
    :cond_7
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8

    .line 4578
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4582
    :cond_8
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_9

    .line 4583
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 4586
    :cond_9
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    .line 4587
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4590
    :cond_a
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_b

    .line 4591
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4592
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4595
    :cond_b
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    .line 4596
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4597
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4600
    :cond_c
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_d

    .line 4601
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_10

    .line 4602
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 4603
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4604
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4611
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4612
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4615
    :cond_d
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 4616
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    .line 4617
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto/16 :goto_0

    .line 4521
    :cond_e
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 4527
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_1

    .line 4606
    :cond_f
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2

    .line 4609
    :cond_10
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3133
    if-nez p1, :cond_0

    .line 3134
    const/high16 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3136
    :cond_0
    if-eqz p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3137
    return-void

    :cond_1
    move v0, v1

    .line 3136
    goto :goto_0
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x1

    .line 3155
    if-eqz p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3156
    if-eqz p1, :cond_0

    .line 3157
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setFlags(II)V

    .line 3159
    :cond_0
    return-void

    .line 3155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7124
    const/4 v0, 0x0

    .line 7131
    .local v0, changed:Z
    iget v6, p0, Landroid/view/View;->mLeft:I

    if-ne v6, p1, :cond_0

    iget v6, p0, Landroid/view/View;->mRight:I

    if-ne v6, p3, :cond_0

    iget v6, p0, Landroid/view/View;->mTop:I

    if-ne v6, p2, :cond_0

    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq v6, p4, :cond_4

    .line 7132
    :cond_0
    const/4 v0, 0x1

    .line 7135
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v6, 0x20

    .line 7138
    .local v1, drawn:I
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7141
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v6, v7

    .line 7142
    .local v5, oldWidth:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, v6, v7

    .line 7144
    .local v4, oldHeight:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7145
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 7146
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 7147
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 7149
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7151
    sub-int v3, p3, p1

    .line 7152
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 7154
    .local v2, newHeight:I
    if-ne v3, v5, :cond_1

    if-eq v2, v4, :cond_2

    .line 7155
    :cond_1
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7158
    :cond_2
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_3

    .line 7164
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7165
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7169
    :cond_3
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7171
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7173
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    :cond_4
    return v0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 3203
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3204
    return-void

    .line 3203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 5438
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5439
    if-eqz p1, :cond_0

    .line 5440
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5443
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5445
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 5563
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5564
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5565
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5566
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5568
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 7848
    iput p1, p0, Landroid/view/View;->mID:I

    .line 7849
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 7858
    if-eqz p1, :cond_0

    .line 7859
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7863
    :goto_0
    return-void

    .line 7861
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 2932
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 2933
    return-void

    .line 2932
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 4909
    if-nez p1, :cond_0

    .line 4910
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4912
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4913
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4914
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 3316
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3317
    return-void

    .line 3316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 8303
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 8304
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 8306
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8307
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 8417
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 8418
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 8428
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 8429
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "nextFocusDownId"

    .prologue
    .line 3012
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3013
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "nextFocusLeftId"

    .prologue
    .line 2952
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2953
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "nextFocusRightId"

    .prologue
    .line 2972
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2973
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "nextFocusUpId"

    .prologue
    .line 2992
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2993
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2376
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2379
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2380
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2405
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2408
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2409
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2355
    iput-object p1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2356
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2505
    iput-object p1, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 2506
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2391
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2394
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2395
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2513
    iput-object p1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2514
    return-void
.end method

.method public setPadding(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v4, 0x100

    const/4 v3, 0x0

    .line 7568
    const/4 v0, 0x0

    .line 7570
    .local v0, changed:Z
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 7571
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 7573
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 7576
    .local v1, viewFlags:I
    and-int/lit16 v2, v1, 0x300

    if-eqz v2, :cond_1

    .line 7578
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 7579
    and-int v2, v1, v4

    if-nez v2, :cond_7

    move v2, v3

    :goto_0
    add-int/2addr p3, v2

    .line 7582
    :cond_0
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_1

    .line 7583
    and-int v2, v1, v4

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    add-int/2addr p4, v2

    .line 7588
    :cond_1
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v2, p1, :cond_2

    .line 7589
    const/4 v0, 0x1

    .line 7590
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7592
    :cond_2
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v2, p2, :cond_3

    .line 7593
    const/4 v0, 0x1

    .line 7594
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7596
    :cond_3
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v2, p3, :cond_4

    .line 7597
    const/4 v0, 0x1

    .line 7598
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 7600
    :cond_4
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v2, p4, :cond_5

    .line 7601
    const/4 v0, 0x1

    .line 7602
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 7605
    :cond_5
    if-eqz v0, :cond_6

    .line 7606
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7608
    :cond_6
    return-void

    .line 7579
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v2

    goto :goto_0

    .line 7583
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v2

    goto :goto_1
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 3329
    if-eqz p1, :cond_0

    .line 3330
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3334
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3335
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 3336
    return-void

    .line 3332
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 3393
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3394
    return-void

    :cond_0
    move v0, v1

    .line 3393
    goto :goto_0
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 5649
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 5650
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5651
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5652
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5654
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 2860
    if-eqz p1, :cond_1

    .line 2861
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2862
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2865
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2872
    :goto_0
    return-void

    .line 2867
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2868
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2870
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter "fadeScrollbars"

    .prologue
    .line 5611
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5612
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5613
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 5614
    if-eqz p1, :cond_0

    .line 5615
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5619
    :goto_0
    return-void

    .line 5617
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 7661
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eq v0, p1, :cond_2

    .line 7662
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7663
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 7664
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7665
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7666
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 7668
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 7661
    goto :goto_0
.end method

.method public setSoundEffect(I)V
    .locals 0
    .parameter "soundEffect"

    .prologue
    .line 2431
    iput p1, p0, Landroid/view/View;->mSoundEffect:I

    .line 2432
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 3174
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3175
    return-void

    .line 3174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 7963
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 7964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7968
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 7969
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 7914
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 7915
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 7978
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7979
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7983
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 7984
    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 4488
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 4489
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 5473
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5474
    if-eqz p1, :cond_0

    .line 5475
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5478
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5480
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 5593
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5594
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5595
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5596
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5598
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3083
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3084
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3085
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 3084
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 3252
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3253
    return-void

    .line 3252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 3229
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3230
    return-void

    .line 3229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 2497
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 8447
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 8448
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8449
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8450
    return-void
.end method

.method unFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2644
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2645
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2647
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2648
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2650
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 7247
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7248
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7250
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 7232
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7233
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7235
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 7272
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3262
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3239
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
