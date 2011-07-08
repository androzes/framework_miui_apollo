package com.android.launcher2.gadget; class Player$1 {/*

.class Lcom/android/launcher2/gadget/Player$1;
.super Landroid/os/Handler;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$1;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 446
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 443
    :pswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$1;->this$0:Lcom/android/launcher2/gadget/Player;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$1100(Lcom/android/launcher2/gadget/Player;)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

*/}
