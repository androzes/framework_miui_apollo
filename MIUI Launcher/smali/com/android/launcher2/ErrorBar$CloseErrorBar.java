package com.android.launcher2; class ErrorBar$CloseErrorBar {/*

.class Lcom/android/launcher2/ErrorBar$CloseErrorBar;
.super Ljava/lang/Object;
.source "ErrorBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ErrorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseErrorBar"
.end annotation


# instance fields
.field private final mBarCount:I

.field final synthetic this$0:Lcom/android/launcher2/ErrorBar;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ErrorBar;I)V
    .locals 0
    .parameter
    .parameter "count"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;->this$0:Lcom/android/launcher2/ErrorBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    #p0=(Reference);
    iput p2, p0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;->mBarCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;->this$0:Lcom/android/launcher2/ErrorBar;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/ErrorBar;->access$000(Lcom/android/launcher2/ErrorBar;)I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;->mBarCount:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;->this$0:Lcom/android/launcher2/ErrorBar;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/ErrorBar;->hideError()V

    .line 46
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

*/}
