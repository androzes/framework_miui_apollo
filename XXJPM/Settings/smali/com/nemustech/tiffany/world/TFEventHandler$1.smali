.class Lcom/nemustech/tiffany/world/TFEventHandler$1;
.super Ljava/lang/Object;
.source "TFEventHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurX:F

.field mCurY:F

.field mCurrTick:J

.field mOldX:F

.field mOldY:F

.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEventHandler;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 33
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$000(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mUserTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$000(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mUserTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    .line 74
    :goto_0
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$000(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 43
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    :goto_1
    move v0, v8

    .line 74
    goto :goto_0

    .line 46
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurrTick:J

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldX:F

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldY:F

    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$100(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFRenderer;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldX:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldY:F

    iget-wide v3, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurrTick:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFRenderer;->handleDown(FFJ)V

    goto :goto_1

    .line 54
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurrTick:J

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    .line 58
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$100(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFRenderer;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldX:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldY:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    iget-wide v5, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurrTick:J

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFRenderer;->handleDrag(FFFFJ)V

    .line 60
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldX:F

    .line 61
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldY:F

    goto :goto_1

    .line 66
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    .line 68
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->this$0:Lcom/nemustech/tiffany/world/TFEventHandler;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEventHandler;->access$100(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFRenderer;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFRenderer;->handleUp(FF)V

    .line 70
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldX:F

    .line 71
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mCurY:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler$1;->mOldY:F

    goto :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
