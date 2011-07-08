package com.android.launcher2; class ApplicationsMessage$MessageReceiver {/*

.class Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ApplicationsMessage;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ApplicationsMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;->this$0:Lcom/android/launcher2/ApplicationsMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;->this$0:Lcom/android/launcher2/ApplicationsMessage;

    #v1=(Reference);
    const-string v2, "android.intent.extra.update_application_flatten_name"

    #v2=(Reference);
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "android.intent.extra.update_application_message"

    #v3=(Reference);
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->access$000(Lcom/android/launcher2/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 38
    :catch_0
    move-exception v1

    #v1=(Reference);
    move-object v0, v1

    .line 39
    .local v0, ex:Ljava/lang/NullPointerException;
    #v0=(Reference);
    const-string v1, "ApplicationsMessage"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

*/}
