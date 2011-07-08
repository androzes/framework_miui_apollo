package com.android.launcher2; class UserFolder {/*

.class public Lcom/android/launcher2/UserFolder;
.super Lcom/android/launcher2/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mDirty:Z

.field private mEditPanelShowing:Z

.field private mEditTitleBtn:Landroid/view/View;

.field protected mEnableHidden:Landroid/widget/CheckBox;

.field private mFolderSetting:Landroid/view/ViewGroup;

.field private mHiddenButtons:Landroid/view/View;

.field private mRenameEdit:Landroid/widget/EditText;

.field private mSetPassword:Landroid/widget/Button;

.field private mShowHidden:Landroid/widget/Button;

.field private mSortByAbc:Landroid/widget/Checkable;

.field private mSortByFrequency:Landroid/widget/Checkable;

.field private mSortByNotDefined:Landroid/widget/Checkable;

.field private mTag:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 50
    #v0=(Null);
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    #p0=(Reference);
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/UserFolder;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mShowHidden:Landroid/widget/Button;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/UserFolder;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    #v0=(Reference);
    return-object v0
.end method

.method private confirmEdit()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v2, 0x1

    .line 169
    #v2=(One);
    const/4 v0, 0x0

    .line 170
    .local v0, changed:Z
    #v0=(Null);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    #v1=(Reference);
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    #v1=(Integer);
    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 173
    const/4 v0, 0x1

    .line 186
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 188
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_1
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    .line 195
    :cond_2
    return-void

    .line 175
    :cond_3
    #v0=(Null);v1=(Boolean);v2=(One);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    #v1=(Reference);
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 176
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    #v1=(Integer);
    if-eq v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 178
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 180
    :cond_4
    #v0=(Null);v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    #v1=(Reference);
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    #v1=(Integer);
    if-eq v1, v3, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iput v3, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 183
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f030019

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/UserFolder;

    return-object p0
.end method

.method private loadEditSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 202
    #v2=(One);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v0, v0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 205
    :pswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    #v0=(Reference);
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 208
    :pswitch_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    #v0=(Reference);
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 211
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    #v0=(Reference);
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEditPanel(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 217
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 218
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 11
    .parameter "isShow"
    .parameter "showAnimation"

    .prologue
    const/16 v10, 0x8

    #v10=(PosByte);
    const v9, 0x7f040002

    #v9=(Integer);
    const/4 v8, 0x0

    .line 221
    #v8=(Null);
    iget-boolean v5, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    #v5=(Boolean);
    if-ne v5, p1, :cond_0

    .line 260
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 225
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 227
    .local v0, li:Landroid/view/animation/LinearInterpolator;
    #v0=(Reference);
    if-eqz p1, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->loadEditSetting()V

    .line 229
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0042

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v5, v10}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 231
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    const/4 v6, 0x4

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    if-eqz p2, :cond_1

    .line 234
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v6, 0x7f04000e

    #v6=(Integer);
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 235
    .local v2, sft:Landroid/view/animation/Animation;
    #v2=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v6, 0x7f040008

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 236
    .local v3, stb:Landroid/view/animation/Animation;
    #v3=(Reference);
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 238
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v7, 0x7f040005

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    .end local v2           #sft:Landroid/view/animation/Animation;
    .end local v3           #stb:Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iput-boolean p1, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    goto :goto_0

    .line 244
    :cond_2
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 248
    if-eqz p2, :cond_1

    .line 249
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v6, 0x7f04000a

    #v6=(Integer);
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 250
    .local v4, stp:Landroid/view/animation/Animation;
    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v6, 0x7f04000c

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 251
    .local v1, sfb:Landroid/view/animation/Animation;
    #v1=(Reference);
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 253
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 282
    #v4=(One);
    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v2=(Reference);
    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_1

    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 322
    new-instance v3, Lcom/android/launcher2/ShortcutsAdapter;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/android/launcher2/UserFolder;->mContext:Landroid/content/Context;

    #v4=(Reference);
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v2, v0

    #v2=(Reference);
    invoke-direct {v3, v4, v2}, Lcom/android/launcher2/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 323
    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v2, v2, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    #v2=(Integer);
    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    #v2=(One);
    move v1, v2

    .line 325
    .local v1, showHidden:Z
    :goto_0
    #v1=(Boolean);v2=(Boolean);
    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->onHiddenButtonChecked()V

    .line 331
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    const-string v3, "favorites._id"

    #v3=(Reference);
    iget-wide v4, p1, Lcom/android/launcher2/FolderInfo;->id:J

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 332
    return-void

    .line 323
    .end local v1           #showHidden:Z
    :cond_0
    #v1=(Uninit);v2=(Integer);v3=(PosByte);v4=(Reference);v5=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    move v1, v2

    #v1=(Null);
    goto :goto_0

    .line 329
    .restart local v1       #showHidden:Z
    :cond_1
    #v1=(Boolean);v2=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->onHiddenButtonUnchecked()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    .line 129
    #v4=(One);
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClick(Landroid/view/View;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #v1=(Integer);
    sparse-switch v1, :sswitch_data_0

    .line 153
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 132
    :sswitch_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);
    invoke-direct {p0, v4}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 136
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    #v0=(Uninit);v1=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordForFolderHiddenEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    #v1=(Reference);
    const/16 v2, 0x65

    #v2=(PosByte);
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    #v3=(Reference);
    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 144
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 148
    :cond_1
    :sswitch_3
    #v1=(Conflicted);
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->confirmEdit()V

    .line 150
    :sswitch_4
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v1}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x7f080041 -> :sswitch_0
        0x7f08004a -> :sswitch_2
        0x7f08004b -> :sswitch_1
        0x7f08004c -> :sswitch_3
        0x7f08004d -> :sswitch_4
    .end sparse-switch
.end method

.method onClose(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 337
    iget-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 340
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 299
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 307
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 303
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 289
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .line 291
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    #v2=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/ShortcutsAdapter;->add(Ljava/lang/Object;)V

    .line 292
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 293
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 294
    const/4 v1, 0x1

    return v1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 2
    .parameter "target"
    .parameter "success"

    .prologue
    .line 311
    if-eqz p2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    .line 313
    .local v0, adapter:Lcom/android/launcher2/ShortcutsAdapter;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutsAdapter;->remove(Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v1, v1, Lcom/android/launcher2/FolderIcon;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 318
    .end local v0           #adapter:Lcom/android/launcher2/ShortcutsAdapter;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/launcher2/Folder;->onFinishInflate()V

    .line 67
    const v0, 0x7f080041

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f08004c

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f08004d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f080042

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    .line 72
    const v0, 0x7f080045

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    .line 73
    const v0, 0x7f080047

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    .line 74
    const v0, 0x7f080046

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    .line 75
    const v0, 0x7f080049

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mHiddenButtons:Landroid/view/View;

    .line 76
    const v0, 0x7f08004a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mShowHidden:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mShowHidden:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f080048

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/launcher2/UserFolder$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/UserFolder$1;-><init>(Lcom/android/launcher2/UserFolder;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    const v0, 0x7f08004b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mSetPassword:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSetPassword:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f080043

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWholeAnimationCacheEnabled(Z)V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    .line 113
    return-void
.end method

.method onHiddenButtonChecked()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    #v0=(Reference);
    const v1, 0x7f020009

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mHiddenButtons:Landroid/view/View;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mShowHidden:Landroid/widget/Button;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    return-void
.end method

.method onHiddenButtonUnchecked()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    #v0=(Reference);
    const v1, 0x7f020005

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mShowHidden:Landroid/widget/Button;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mHiddenButtons:Landroid/view/View;

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v6, 0x0

    .line 156
    #v6=(Null);
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 166
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Integer);
    return-void

    .line 159
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Uninit);v8=(One);
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 160
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v2, v3, [I

    .line 161
    .local v2, pos:[I
    #v2=(Reference);
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 162
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    #v3=(Reference);
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 163
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    new-instance v3, Landroid/graphics/Rect;

    #v3=(UninitRef);
    aget v4, v2, v6

    #v4=(Integer);
    aget v5, v2, v8

    #v5=(Integer);
    aget v6, v2, v6

    #v6=(Integer);
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    #v7=(Integer);
    add-int/2addr v6, v7

    aget v7, v2, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    #v8=(Integer);
    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 165
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 263
    #v2=(Null);
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    move v1, v2

    .line 277
    :goto_0
    #v0=(Conflicted);v2=(Integer);
    return v1

    .line 267
    :cond_0
    #v0=(Uninit);v2=(Null);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move v1, v2

    .line 268
    #v1=(Null);
    goto :goto_0

    .line 271
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 273
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    #v1=(Reference);
    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    #v2=(Integer);
    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 274
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 275
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    .line 277
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method onOpen(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    const/4 v0, 0x0

    .line 346
    #v0=(Null);
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 347
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->requestFocus()Z

    .line 349
    return-void
.end method

.method saveFolderToDatabase()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 199
    return-void
.end method

*/}
