package com.android.launcher2; class OnLongClickAgent {/*

.class public Lcom/android/launcher2/OnLongClickAgent;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;,
        Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;
    }
.end annotation


# static fields
.field private static MOVE_THRESHOLD:I


# instance fields
.field private mClientView:Landroid/view/ViewGroup;

.field private mDonwX:F

.field private mDonwY:F

.field private mEditingTimeout:J

.field private mHasPerformedLongPress:Z

.field private mIsLongPressCheckPending:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mNormalTimeout:J

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

.field private mVersionTagGenerator:Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xf

    #v0=(PosByte);
    sput v0, Lcom/android/launcher2/OnLongClickAgent;->MOVE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;)V
    .locals 2
    .parameter "client"
    .parameter "launcher"
    .parameter "versionTagGenerator"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    #p0=(Reference);
    const-wide/16 v0, 0xc8

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mEditingTimeout:J

    .line 29
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mNormalTimeout:J

    .line 47
    iput-object p1, p0, Lcom/android/launcher2/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/OnLongClickAgent;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 49
    iput-object p3, p0, Lcom/android/launcher2/OnLongClickAgent;->mVersionTagGenerator:Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/OnLongClickAgent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mIsLongPressCheckPending:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/OnLongClickAgent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/launcher2/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/OnLongClickAgent;)Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mVersionTagGenerator:Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/OnLongClickAgent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    return p1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 86
    #v2=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 107
    :goto_0
    #v1=(Conflicted);
    return v0

    .line 90
    :cond_0
    #v1=(Uninit);
    iget-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mIsLongPressCheckPending:Z

    if-nez v0, :cond_1

    move v0, v2

    .line 91
    #v0=(Null);
    goto :goto_0

    .line 94
    :cond_1
    #v0=(Boolean);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    #v1=(Conflicted);
    move v0, v2

    .line 107
    #v0=(Null);
    goto :goto_0

    .line 96
    :pswitch_0
    #v0=(Integer);v1=(Uninit);
    iget v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mDonwX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #v1=(Float);
    sub-float/2addr v0, v1

    #v0=(Float);
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/launcher2/OnLongClickAgent;->MOVE_THRESHOLD:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    cmpg-float v0, v0, v1

    #v0=(Byte);
    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mDonwY:F

    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    #v0=(Float);
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/launcher2/OnLongClickAgent;->MOVE_THRESHOLD:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    cmpg-float v0, v0, v1

    #v0=(Byte);
    if-ltz v0, :cond_2

    .line 103
    :cond_3
    :pswitch_1
    #v0=(Integer);v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postCheckForLongClick()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 155
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 145
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    .line 147
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;-><init>(Lcom/android/launcher2/OnLongClickAgent;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->rememberVersionTag()V

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mLauncher:Lcom/android/launcher2/Launcher;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mEditingTimeout:J

    :goto_1
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mIsLongPressCheckPending:Z

    goto :goto_0

    .line 152
    :cond_2
    #v0=(Reference);v2=(Boolean);v3=(Uninit);
    iget-wide v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mNormalTimeout:J

    #v2=(LongLo);v3=(LongHi);
    goto :goto_1
.end method


# virtual methods
.method public cancelCustomziedLongPress()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 158
    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mIsLongPressCheckPending:Z

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, result:Z
    #v1=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    #v2=(Integer);
    and-int/lit16 v0, v2, 0xff

    .line 57
    .local v0, action:I
    #v0=(Integer);
    iget-boolean v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 58
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mHasPerformedLongPress:Z

    .line 59
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 78
    :goto_0
    #v1=(Boolean);v2=(Boolean);
    return v2

    .line 64
    :cond_0
    #v1=(Null);
    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher2/OnLongClickAgent;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    #v1=(Boolean);v2=(Float);
    move v2, v1

    .line 78
    #v2=(Boolean);
    goto :goto_0

    .line 66
    :pswitch_0
    #v1=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    #v2=(Float);
    iput v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mDonwX:F

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/OnLongClickAgent;->mDonwY:F

    .line 68
    invoke-direct {p0}, Lcom/android/launcher2/OnLongClickAgent;->postCheckForLongClick()V

    goto :goto_1

    .line 64
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/launcher2/OnLongClickAgent;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public setEditingTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/android/launcher2/OnLongClickAgent;->mEditingTimeout:J

    .line 175
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/launcher2/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 167
    return-void
.end method

*/}
