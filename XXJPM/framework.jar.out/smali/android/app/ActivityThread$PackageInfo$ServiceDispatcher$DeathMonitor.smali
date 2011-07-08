.class final Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1277
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    .line 1279
    iput-object p3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    .line 1280
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->death(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1284
    return-void
.end method
