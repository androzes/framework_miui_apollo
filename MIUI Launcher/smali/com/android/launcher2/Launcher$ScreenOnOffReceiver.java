package com.android.launcher2; class Launcher$ScreenOnOffReceiver {/*

.class Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 1819
    #v3=(One);
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1820
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    const-string v1, "android.intent.action.SCREEN_OFF"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1821
    iget-object v1, p0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;->this$0:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-static {v1, v3}, Lcom/android/launcher2/Launcher;->access$1002(Lcom/android/launcher2/Launcher;Z)Z

    .line 1827
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-static {p1}, Lcom/android/launcher2/LauncherModel;->flashDelayedUpdateItem(Landroid/content/Context;)Z

    .line 1828
    return-void

    .line 1822
    :cond_1
    #v1=(Boolean);v2=(Uninit);
    const-string v1, "android.intent.action.USER_PRESENT"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;->this$0:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/launcher2/Launcher;->access$1002(Lcom/android/launcher2/Launcher;Z)Z

    .line 1824
    iget-object v1, p0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher2/Launcher;->access$1100(Lcom/android/launcher2/Launcher;Z)V

    goto :goto_0
.end method

*/}
