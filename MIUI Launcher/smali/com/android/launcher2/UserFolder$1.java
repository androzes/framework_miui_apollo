package com.android.launcher2; class UserFolder$1 {/*

.class Lcom/android/launcher2/UserFolder$1;
.super Ljava/lang/Object;
.source "UserFolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/UserFolder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/UserFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/UserFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 82
    #v3=(Null);
    if-eqz p2, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/UserFolder;->access$000(Lcom/android/launcher2/UserFolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordForFolderHiddenEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    const/16 v1, 0x66

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/UserFolder;->access$100(Lcom/android/launcher2/UserFolder;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 87
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->onHiddenButtonChecked()V

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v0, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    #v1=(Integer);
    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    .line 89
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    .line 106
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 95
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/UserFolder;->access$000(Lcom/android/launcher2/UserFolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordForFolderHiddenEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    const/16 v1, 0x67

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/UserFolder;->access$100(Lcom/android/launcher2/UserFolder;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 99
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->onHiddenButtonUnchecked()V

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    iget-object v0, v0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v0, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/UserFolder$1;->this$0:Lcom/android/launcher2/UserFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    goto :goto_0
.end method

*/}
