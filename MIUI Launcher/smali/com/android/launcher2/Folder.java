package com.android.launcher2; class Folder {/*

.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# instance fields
.field private mClosing:Z

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragController:Lcom/android/launcher2/DragController;

.field protected mDragItem:Lcom/android/launcher2/ShortcutInfo;

.field protected mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 71
    #v0=(Null);
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    #p0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 53
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 72
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setWholeAnimationCacheEnabled(Z)V

    .line 73
    return-void
.end method

.method private finishShow()V
    .locals 3

    .prologue
    .line 210
    iget-boolean v2, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 212
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 214
    .local v0, parent:Landroid/view/ViewParent;
    #v0=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 215
    instance-of v2, v0, Landroid/view/ViewGroup;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 216
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    .end local v1           #workspace:Lcom/android/launcher2/Workspace;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 223
    return-void
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v0=(Reference);
    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 228
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    .line 229
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 244
    :pswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_0
    .end packed-switch
.end method

.method onClose(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    const v2, 0x3f19999a

    #v2=(Integer);
    const/4 v6, 0x1

    .line 182
    #v6=(One);
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v0=(Reference);
    iput-boolean v3, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 183
    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 186
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onClose()V

    .line 193
    if-nez p1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    .line 207
    :goto_0
    #v1=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Float);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 189
    :cond_0
    #v1=(Integer);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(One);v7=(Uninit);v8=(Uninit);
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    goto :goto_0

    .line 198
    :cond_1
    new-instance v7, Landroid/view/animation/AnimationSet;

    #v7=(UninitRef);
    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 199
    .local v7, animation:Landroid/view/animation/AnimationSet;
    #v7=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v8, v0, [I

    .line 200
    .local v8, pos:[I
    #v8=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v0=(Reference);
    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 201
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #v0=(UninitRef);
    aget v3, v8, v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    #v4=(Integer);
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    #v5=(Float);
    aget v3, v8, v6

    int-to-float v6, v3

    #v6=(Float);
    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v0=(Reference);
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    const-wide/16 v0, 0x96

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 205
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #v0=(Reference);
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 107
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f08000a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setWholeAnimationCacheEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    new-instance v1, Lcom/android/launcher2/Folder$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    const v0, 0x7f080011

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f080009

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method onOpen(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/high16 v2, 0x3f80

    #v2=(Integer);
    const v1, 0x3f19999a

    #v1=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 151
    #v5=(Null);
    iput-boolean v5, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v0=(Reference);
    iput-boolean v6, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 154
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 157
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onOpen()V

    .line 165
    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Float);v6=(Float);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 169
    :cond_1
    #v1=(Integer);v3=(Reference);v4=(Uninit);v5=(Null);v6=(One);v7=(Uninit);v8=(Uninit);
    new-instance v7, Landroid/view/animation/AnimationSet;

    #v7=(UninitRef);
    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 170
    .local v7, animation:Landroid/view/animation/AnimationSet;
    #v7=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v8, v0, [I

    .line 171
    .local v8, pos:[I
    #v8=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v0=(Reference);
    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 172
    const-wide/16 v3, 0x64

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v7, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 173
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #v0=(UninitRef);
    aget v3, v8, v5

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    #v4=(Integer);
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    #v5=(Float);
    aget v3, v8, v6

    int-to-float v6, v3

    #v6=(Float);
    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v0=(Reference);
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    const-wide/16 v0, 0x96

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 177
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #v0=(Reference);
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 117
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 104
    return-void
.end method

.method setFolderIcon(Landroid/view/View;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/FolderIcon;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 137
    :goto_0
    return-void

    .line 135
    .restart local p1
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    goto :goto_0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 128
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 129
    return-void
.end method

*/}
