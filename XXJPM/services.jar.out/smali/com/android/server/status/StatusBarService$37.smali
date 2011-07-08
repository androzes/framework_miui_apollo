.class Lcom/android/server/status/StatusBarService$37;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3774
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3775
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v1, v1, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 3776
    .local v0, orientation:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3777
    return-void

    .line 3775
    .end local v0           #orientation:I
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
