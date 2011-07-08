package com.android.launcher2; class CellLayout$ScreenInvalideRunnerFirst {/*

.class Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenInvalideRunnerFirst"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;-><init>(Lcom/android/launcher2/CellLayout;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;->this$0:Lcom/android/launcher2/CellLayout;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$100(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;->this$0:Lcom/android/launcher2/CellLayout;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->onScreenInvalide(Landroid/view/View;)V

    .line 1088
    return-void
.end method

*/}
