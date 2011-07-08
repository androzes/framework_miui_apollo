package com.android.launcher2; class InstallShortcutReceiver {/*

.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const-string v7, "InstallShortcutReceiver"

    .line 30
    #v7=(Reference);
    const-string v5, "com.android.launcher.action.INSTALL_SHORTCUT"

    #v5=(Reference);
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 59
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 34
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 35
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v3

    .line 36
    .local v3, launcher:Lcom/android/launcher2/Launcher;
    #v3=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    .line 37
    .local v4, model:Lcom/android/launcher2/LauncherModel;
    #v4=(Reference);
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    .line 38
    :cond_1
    const-string v5, "InstallShortcutReceiver"

    #v5=(Reference);
    const-string v5, "Launcher is not found"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_2
    #v5=(Boolean);
    const-string v5, "android.intent.extra.shortcut.INTENT"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/content/Intent;

    .line 44
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_3

    .line 45
    const-string v5, "InstallShortcutReceiver"

    const-string v5, "Failed to add shortcut because the extra shortcut intent is missing"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 50
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_4
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v4, p1, p2, v5}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 54
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    #v1=(Reference);
    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v5, "InstallShortcutReceiver"

    #v5=(Reference);
    const-string v5, "Failed to add shortcut"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

*/}
