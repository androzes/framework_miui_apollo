.class public Landroid/widget/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorHandle$CursorHandleMenu;,
        Landroid/widget/CursorHandle$ThreadControl;,
        Landroid/widget/CursorHandle$CheckCursorHandle;,
        Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CursorHandleEditText"


# instance fields
.field private checkCursorHandle:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field private mCursorHandle:Landroid/graphics/drawable/Drawable;

.field private mCursorHandleCurX:I

.field private mCursorHandleCurY:I

.field private mCursorHandleImage:Landroid/widget/ImageView;

.field private mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

.field private mCursorHandleParent:Landroid/widget/EditText;

.field private mCursorHandlePopup:Landroid/widget/PopupWindow;

.field private mCursorHandlePreX:I

.field private mCursorHandlePreY:I

.field private mCursorHandlePrevAction:I

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mEditTextPrevAction:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorHandleMoving:Z

.field private mIsCursorHandleOn:Z

.field private mIsThisExtractEditText:Z

.field private mPrevCursorHandleTouchX:F

.field private mPrevCursorHandleTouchY:F

.field private mPrevEditTexTouchX:F

.field private mPrevEditTexTouchY:F

.field private mSelectionStartOffset:I

.field private mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 7
    .parameter "et"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v5, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    .line 34
    iput-boolean v4, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    .line 44
    iput v2, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 45
    iput v2, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    .line 47
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    .line 48
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    .line 49
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorTopXPosition:I

    .line 50
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    .line 63
    iput-boolean v4, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    .line 66
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    .line 68
    new-instance v1, Landroid/widget/CursorHandle$ThreadControl;

    invoke-direct {v1, p0}, Landroid/widget/CursorHandle$ThreadControl;-><init>(Landroid/widget/CursorHandle;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    .line 70
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    const v2, 0x1090081

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    .line 73
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    .line 74
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 77
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 78
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;

    invoke-direct {v2, p0, v6}, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;-><init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 79
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 80
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 81
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 83
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 85
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 86
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    .line 90
    new-instance v1, Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;-><init>(Landroid/widget/CursorHandle;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    .line 91
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/CursorHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    return p1
.end method

.method static synthetic access$1202(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    return p1
.end method

.method static synthetic access$1402(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/CursorHandle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/CursorHandle;->showOrDismissCursorHandle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/CursorHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CursorHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/CursorHandle;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchX:F

    return v0
.end method

.method static synthetic access$602(Landroid/widget/CursorHandle;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchX:F

    return p1
.end method

.method static synthetic access$700(Landroid/widget/CursorHandle;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchY:F

    return v0
.end method

.method static synthetic access$702(Landroid/widget/CursorHandle;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchY:F

    return p1
.end method

.method static synthetic access$802(Landroid/widget/CursorHandle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    return-object v0
.end method

.method private showOrDismissCursorHandle()Z
    .locals 5

    .prologue
    const v4, 0x77359400

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 722
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    .line 737
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-nez v0, :cond_0

    .line 740
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    :goto_0
    iput-boolean v1, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    .line 749
    :cond_0
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    if-eq v0, v4, :cond_2

    .line 750
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    iget v1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    iget v1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v3

    .line 782
    :goto_1
    return v0

    .line 744
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    throw v0

    .line 760
    :cond_2
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    if-eqz v0, :cond_3

    move v0, v2

    .line 761
    goto :goto_1

    .line 765
    :cond_3
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-nez v0, :cond_4

    move v0, v3

    .line 766
    goto :goto_1

    .line 770
    :cond_4
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    if-nez v0, :cond_5

    move v0, v3

    .line 773
    goto :goto_1

    .line 777
    :cond_5
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 779
    goto :goto_1

    :cond_6
    move v0, v3

    .line 782
    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    .line 744
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public hideCursorHandle()V
    .locals 3

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 431
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    .line 434
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    .line 435
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 437
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 441
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideCursorHandleAndMenuPost()V
    .locals 2

    .prologue
    .line 408
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/CursorHandle$1;

    invoke-direct {v1, p0}, Landroid/widget/CursorHandle$1;-><init>(Landroid/widget/CursorHandle;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public hideCursorHandleMenu()V
    .locals 3

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    .line 454
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 458
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 463
    :cond_2
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 467
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreateContextMenu()V
    .locals 3

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 208
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 209
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 210
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 854
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 855
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 856
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 638
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 645
    if-nez p1, :cond_1

    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 648
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 649
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 651
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 192
    :cond_3
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 194
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 195
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    if-nez v1, :cond_1

    .line 827
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 828
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 830
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 810
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const v2, 0x1020029

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 813
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 814
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 816
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 100
    iget-boolean v3, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 108
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 112
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 175
    iput v6, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto :goto_0

    .line 114
    :pswitch_0
    iput v0, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 117
    iput v1, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchX:F

    .line 118
    iput v2, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchY:F

    .line 121
    iget-object v3, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 123
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 128
    :pswitch_1
    iget-object v3, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v3

    .line 129
    :try_start_1
    iget v4, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v4, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->isThereAnyTextInClipboard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    :cond_1
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    .line 139
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    .line 140
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 143
    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v5, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getIsEditTextSelecting()Z

    move-result v5

    iput-boolean v5, v4, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 148
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/widget/CursorHandle$CheckCursorHandle;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/CursorHandle$CheckCursorHandle;-><init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    .line 149
    iget-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 159
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 151
    :cond_2
    :try_start_2
    iput v0, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 154
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    .line 155
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    .line 156
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    .line 157
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 166
    :pswitch_2
    iget v3, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 167
    iput v5, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto/16 :goto_0

    .line 170
    :cond_3
    iput v6, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 835
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 840
    if-nez p1, :cond_1

    .line 841
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 842
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 844
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIsCursorHandleOn(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    .line 96
    return-void
.end method

.method public setIsThisExtractEditText(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 860
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 861
    :try_start_0
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showCursorHandle()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    .line 215
    iget-object v5, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v5

    .line 216
    :try_start_0
    iget-object v6, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 219
    monitor-exit v5

    .line 301
    :goto_0
    return-void

    .line 224
    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 225
    .local v1, cursorPath:Landroid/graphics/Path;
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 226
    .local v3, selStart:I
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    .local v2, selEnd:I
    if-eq v3, v7, :cond_2

    if-ne v2, v7, :cond_3

    .line 229
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 230
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 231
    monitor-exit v5

    goto :goto_0

    .line 300
    .end local v1           #cursorPath:Landroid/graphics/Path;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 236
    .restart local v1       #cursorPath:Landroid/graphics/Path;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getIsEditTextSelecting()Z

    move-result v7

    iput-boolean v7, v6, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 239
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-boolean v6, v6, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    if-nez v6, :cond_4

    .line 240
    iput v2, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    .line 246
    :goto_1
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v2, v1, v7}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 253
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 254
    .local v4, tmpLocOnWin:[I
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 262
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v0, v6, v7

    .line 264
    .local v0, bottomCenter:F
    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    .line 265
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    .line 270
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorTopXPosition:I

    .line 271
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    .line 281
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    .line 282
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    .line 283
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    .line 284
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    .line 286
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget v7, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v8, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v9, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 300
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    .line 242
    .end local v0           #bottomCenter:F
    .end local v4           #tmpLocOnWin:[I
    :cond_4
    iput v3, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    goto/16 :goto_1

    .line 295
    .restart local v0       #bottomCenter:F
    .restart local v4       #tmpLocOnWin:[I
    :cond_5
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public showCursorHandleMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 305
    iget-object v9, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v9

    .line 308
    :try_start_0
    iget-object v10, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v10

    if-nez v10, :cond_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 311
    monitor-exit v9

    .line 404
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-boolean v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    if-nez v10, :cond_2

    .line 315
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 316
    monitor-exit v9

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 319
    :cond_2
    :try_start_1
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v10}, Landroid/widget/CursorHandle$CursorHandleMenu;->updateButtonVisibility()V

    .line 320
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v10}, Landroid/widget/CursorHandle$CursorHandleMenu;->calcMenuWidthHeight()V

    .line 323
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    if-nez v10, :cond_3

    .line 324
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 325
    monitor-exit v9

    goto :goto_0

    .line 329
    :cond_3
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    .line 330
    .local v8, widthArrowX:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    .line 331
    .local v1, heightArrowY:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    div-int/lit8 v11, v8, 0x2

    sub-int/2addr v10, v11

    sub-int v2, v10, v13

    .line 332
    .local v2, posArrowX:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    sub-int/2addr v10, v1

    add-int/lit8 v3, v10, 0x0

    .line 335
    .local v3, posArrowY:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v4, v10, v11

    .line 336
    .local v4, posX:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v11, v11, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x2

    .line 337
    .local v5, posY:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    .line 338
    .local v7, width:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    .line 341
    .local v0, height:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 344
    .local v6, screenWidth:I
    if-gtz v4, :cond_6

    .line 345
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4000

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    mul-int/lit8 v4, v10, -0x1

    .line 355
    :cond_4
    :goto_1
    const/16 v10, 0x28

    if-gt v5, v10, :cond_a

    .line 357
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v1

    sub-int v5, v10, v13

    .line 360
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 361
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 364
    :cond_5
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4040

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    sub-int/2addr v5, v10

    .line 366
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 367
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v4, v5, v7, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 373
    :goto_2
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v3, v10, 0x0

    .line 374
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 375
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v2, v3, v8, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 403
    :goto_3
    monitor-exit v9

    goto/16 :goto_0

    .line 346
    :cond_6
    add-int v10, v4, v7

    if-le v10, v6, :cond_4

    .line 348
    add-int v10, v4, v7

    sub-int/2addr v10, v6

    div-int/lit8 v11, v7, 0x2

    if-le v10, v11, :cond_7

    .line 349
    sub-int v10, v6, v7

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v12, 0x4190

    invoke-virtual {v11, v12}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v11

    add-int v4, v10, v11

    goto :goto_1

    .line 351
    :cond_7
    sub-int v4, v6, v7

    goto :goto_1

    .line 369
    :cond_8
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 377
    :cond_9
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 383
    :cond_a
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 384
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 388
    :cond_b
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4188

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    add-int/2addr v5, v10

    .line 390
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 391
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v4, v5, v7, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 397
    :goto_4
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 398
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v2, v3, v8, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_3

    .line 393
    :cond_c
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4

    .line 400
    :cond_d
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method
