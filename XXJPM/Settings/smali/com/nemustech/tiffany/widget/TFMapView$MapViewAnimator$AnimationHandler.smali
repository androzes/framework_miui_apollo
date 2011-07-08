.class Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "TFMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;Lcom/nemustech/tiffany/widget/TFMapView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;-><init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 529
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 530
    .local v1, curTimeMil:J
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$100(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J

    move-result-wide v8

    sub-long v8, v1, v8

    long-to-float v8, v8

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$200(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x3f80

    mul-float/2addr v9, v10

    div-float v3, v8, v9

    .line 531
    .local v3, progress:F
    const/high16 v0, 0x3f80

    .line 534
    .local v0, additionalScale:F
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 545
    :goto_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget-object v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget-object v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget-object v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float v6, v8, v9

    .line 546
    .local v6, x:F
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget-object v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget-object v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget-object v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float v7, v8, v9

    .line 547
    .local v7, y:F
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    add-float v4, v8, v9

    .line 548
    .local v4, scaleX:F
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v9

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    add-float v5, v8, v9

    .line 550
    .local v5, scaleY:F
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$700(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 552
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$700(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;->getScaleFactor(F)F

    move-result v0

    .line 554
    mul-float/2addr v4, v0

    .line 555
    mul-float/2addr v5, v0

    .line 559
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$100(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J

    move-result-wide v8

    sub-long v8, v1, v8

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$200(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 560
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget-object v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 561
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget-object v8, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    iget v7, v8, Landroid/graphics/PointF;->y:F

    .line 562
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget v4, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    .line 563
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    move-result-object v8

    iget v5, v8, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    .line 564
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$800(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/nemustech/tiffany/widget/TFMapView;->zoomToPosition(FFFF)V

    .line 566
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->setScaleFactor(Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;)V

    .line 567
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$400(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 568
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$400(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    move-result-object v8

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-interface {v8, v9}, Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;->onAnimationEnd(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    .line 575
    .end local v4           #scaleX:F
    .end local v5           #scaleY:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_1
    :goto_1
    return-void

    .line 536
    :pswitch_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    const/16 v9, 0xa0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$302(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_0

    .line 539
    :pswitch_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$400(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 540
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$400(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    move-result-object v8

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-interface {v8, v9}, Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;->onAnimationEnd(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    goto :goto_1

    .line 573
    .restart local v4       #scaleX:F
    .restart local v5       #scaleY:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$800(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/nemustech/tiffany/widget/TFMapView;->zoomToPosition(FFFF)V

    .line 574
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-static {v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->access$300(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
