.class Lcom/android/server/AccessibilityManagerService$3;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AccessibilityManagerService;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/AccessibilityManagerService;->access$502(Lcom/android/server/AccessibilityManagerService;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$500(Lcom/android/server/AccessibilityManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$600(Lcom/android/server/AccessibilityManagerService;)V

    .line 253
    monitor-exit v0

    .line 254
    return-void

    :cond_0
    move v1, v3

    .line 243
    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$700(Lcom/android/server/AccessibilityManagerService;)V

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
