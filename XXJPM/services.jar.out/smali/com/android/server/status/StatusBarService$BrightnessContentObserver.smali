.class Lcom/android/server/status/StatusBarService$BrightnessContentObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter

    .prologue
    .line 3632
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3633
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3634
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 3637
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3638
    invoke-static {v2}, Lcom/android/server/status/StatusBarService;->access$2702(Z)Z

    .line 3642
    :goto_0
    return-void

    .line 3640
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$2702(Z)Z

    goto :goto_0
.end method
