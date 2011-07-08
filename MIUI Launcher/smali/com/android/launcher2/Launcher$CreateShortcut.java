package com.android.launcher2; class Launcher$CreateShortcut {/*

.class Lcom/android/launcher2/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher2/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;)V

    #p0=(Reference);
    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1740
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 1741
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1714
    new-instance v2, Lcom/android/launcher2/AddAdapter;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    invoke-direct {v2, v3}, Lcom/android/launcher2/AddAdapter;-><init>(Lcom/android/launcher2/Launcher;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    .line 1716
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1717
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v3, 0x7f0c000e

    #v3=(Integer);
    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1718
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1720
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1722
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1723
    .local v1, dialog:Landroid/app/AlertDialog;
    #v1=(Reference);
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1724
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1725
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1727
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1732
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 1733
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1750
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1751
    .local v2, res:Landroid/content/res/Resources;
    #v2=(Reference);
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 1753
    packed-switch p2, :pswitch_data_0

    .line 1796
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 1756
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)V

    goto :goto_0

    .line 1761
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$800(Lcom/android/launcher2/Launcher;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->onClick(Landroid/view/View;)V

    .line 1762
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v5, v6}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    goto :goto_0

    .line 1768
    :pswitch_2
    #v6=(Uninit);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1770
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference);
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v4, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v4=(Reference);
    const v5, 0x7f0c0011

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1774
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    .local v3, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    #v3=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v6, 0x7f020067

    #v6=(Integer);
    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1780
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v5, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1781
    .local v1, pickIntent:Landroid/content/Intent;
    #v1=(Reference);
    const-string v5, "android.intent.extra.INTENT"

    new-instance v6, Landroid/content/Intent;

    #v6=(UninitRef);
    const-string v7, "android.intent.action.CREATE_LIVE_FOLDER"

    #v7=(Reference);
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1783
    const-string v5, "android.intent.extra.TITLE"

    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v7, 0x7f0c001d

    #v7=(Integer);
    invoke-virtual {v6, v7}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1785
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1787
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/16 v6, 0x8

    #v6=(PosByte);
    invoke-virtual {v5, v1, v6}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1792
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #pickIntent:Landroid/content/Intent;
    .end local v3           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v4           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)V

    goto :goto_0

    .line 1753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1736
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1800
    return-void
.end method

*/}
