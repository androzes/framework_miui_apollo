.class Landroid/widget/CursorHandle$ThreadControl;
.super Ljava/lang/Object;
.source "CursorHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadControl"
.end annotation


# instance fields
.field isContextMenuShowing:Z

.field isImeShowing:Z

.field final synthetic this$0:Landroid/widget/CursorHandle;

.field threadRun:Z

.field threadSleep:Z


# direct methods
.method public constructor <init>(Landroid/widget/CursorHandle;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 792
    iput-object p1, p0, Landroid/widget/CursorHandle$ThreadControl;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-boolean v0, p0, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    .line 794
    iput-boolean v0, p0, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    .line 795
    iput-boolean v0, p0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    .line 796
    iput-boolean v0, p0, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 797
    return-void
.end method
