.class public Lcom/android/server/Watchdog$PssStats;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PssStats"
.end annotation


# instance fields
.field public mBackgroundCount:I

.field public mBackgroundPss:I

.field public mEmptyCount:I

.field public mEmptyPss:I

.field public mForegroundCount:I

.field public mForegroundPss:I

.field public mNoPssCount:I

.field public mProcDeaths:[I

.field public mServiceCount:I

.field public mServicePss:I

.field public mVisibleCount:I

.field public mVisiblePss:I

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/Watchdog$PssStats;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    return-void
.end method
