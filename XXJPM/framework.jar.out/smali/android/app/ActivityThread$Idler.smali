.class final Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 2156
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2156
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2158
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 2159
    .local v0, a:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_2

    .line 2160
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iput-object v5, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 2161
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2168
    .local v1, am:Landroid/app/IActivityManager;
    :cond_0
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_1

    .line 2170
    :try_start_0
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 2171
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    :cond_1
    :goto_0
    move-object v2, v0

    .line 2176
    .local v2, prev:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 2177
    iput-object v5, v2, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 2178
    if-nez v0, :cond_0

    .line 2180
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #prev:Landroid/app/ActivityThread$ActivityRecord;
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2181
    const/4 v3, 0x0

    return v3

    .line 2172
    .restart local v1       #am:Landroid/app/IActivityManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
