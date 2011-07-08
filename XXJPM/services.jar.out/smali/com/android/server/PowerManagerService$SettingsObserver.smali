.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1100(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v2, "stay_on_while_plugged_in"

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$1202(Lcom/android/server/PowerManagerService;I)I

    .line 417
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)V

    .line 420
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v2, "screen_off_timeout"

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$1302(Lcom/android/server/PowerManagerService;I)I

    .line 426
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v2, "screen_brightness_mode"

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;I)V

    .line 429
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)V

    .line 430
    monitor-exit v0

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
