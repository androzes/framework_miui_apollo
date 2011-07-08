.class Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;


# direct methods
.method constructor <init>(Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;->this$1:Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;->this$1:Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    .line 611
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;->this$1:Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v0}, Landroid/widget/CursorHandle;->showCursorHandleMenu()V

    .line 612
    return-void
.end method
