.class Landroid/widget/CursorHandle$CheckCursorHandle$1;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CursorHandle$CheckCursorHandle;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorHandle$CheckCursorHandle;


# direct methods
.method constructor <init>(Landroid/widget/CursorHandle$CheckCursorHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Landroid/widget/CursorHandle$CheckCursorHandle$1;->this$1:Landroid/widget/CursorHandle$CheckCursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle$1;->this$1:Landroid/widget/CursorHandle$CheckCursorHandle;

    iget-object v0, v0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v0}, Landroid/widget/CursorHandle;->showCursorHandle()V

    .line 692
    return-void
.end method
