.class Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorHandleTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CursorHandle;


# direct methods
.method private constructor <init>(Landroid/widget/CursorHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    invoke-direct {p0, p1}, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;-><init>(Landroid/widget/CursorHandle;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "v"
    .parameter "event"

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v16

    monitor-enter v16

    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, bResult:Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 479
    .local v3, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 480
    .local v5, currentX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 482
    .local v6, currentY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$300(Landroid/widget/CursorHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 483
    .local v8, handleWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$300(Landroid/widget/CursorHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 487
    .local v7, handleHeight:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object v11, v0

    .line 488
    .local v11, location:[I
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 494
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object v15, v0

    .line 498
    .local v15, tmpLocOnScreen:[I
    const/4 v9, 0x0

    .line 499
    .local v9, layout:Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_1

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 504
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$502(Landroid/widget/CursorHandle;I)I

    .line 631
    :goto_0
    monitor-exit v16

    return v4

    .line 507
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$502(Landroid/widget/CursorHandle;I)I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$602(Landroid/widget/CursorHandle;F)F

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$702(Landroid/widget/CursorHandle;F)F

    .line 512
    const/4 v4, 0x1

    .line 513
    goto :goto_0

    .line 523
    :pswitch_1
    const/high16 v17, 0x40a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$600(Landroid/widget/CursorHandle;)F

    move-result v18

    sub-float v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    const/high16 v17, 0x40a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$700(Landroid/widget/CursorHandle;)F

    move-result v18

    sub-float v18, v6, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    .line 526
    const/4 v4, 0x1

    .line 527
    goto :goto_0

    .line 531
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$802(Landroid/widget/CursorHandle;Z)Z

    .line 536
    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$600(Landroid/widget/CursorHandle;)F

    move-result v18

    sub-float v17, v17, v18

    div-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v12, v17, v18

    .line 537
    .local v12, modifiedX:F
    const/16 v17, 0x1

    aget v17, v11, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$700(Landroid/widget/CursorHandle;)F

    move-result v18

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v18

    const/high16 v19, 0x40c0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 541
    .local v13, modifiedY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$502(Landroid/widget/CursorHandle;I)I

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 552
    const/16 v17, 0x0

    aget v17, v15, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v12, v17, v18

    .line 553
    const/16 v17, 0x1

    aget v17, v15, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getScrollY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 556
    move v0, v13

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v10

    .line 557
    .local v10, line:I
    invoke-virtual {v9, v10, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v14

    .line 561
    .local v14, off:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/CursorHandle;->access$1000(Landroid/widget/CursorHandle;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 568
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->showCursorHandle()V

    .line 570
    const/4 v4, 0x1

    .line 571
    goto/16 :goto_0

    .line 566
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1

    .line 632
    .end local v3           #action:I
    .end local v5           #currentX:F
    .end local v6           #currentY:F
    .end local v7           #handleHeight:I
    .end local v8           #handleWidth:I
    .end local v9           #layout:Landroid/text/Layout;
    .end local v10           #line:I
    .end local v11           #location:[I
    .end local v12           #modifiedX:F
    .end local v13           #modifiedY:F
    .end local v14           #off:I
    .end local v15           #tmpLocOnScreen:[I
    :catchall_0
    move-exception v17

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 576
    .restart local v3       #action:I
    .restart local v5       #currentX:F
    .restart local v6       #currentY:F
    .restart local v7       #handleHeight:I
    .restart local v8       #handleWidth:I
    .restart local v9       #layout:Landroid/text/Layout;
    .restart local v11       #location:[I
    .restart local v15       #tmpLocOnScreen:[I
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$802(Landroid/widget/CursorHandle;Z)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$500(Landroid/widget/CursorHandle;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const v18, 0x77359400

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$1102(Landroid/widget/CursorHandle;I)I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const v18, 0x77359400

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$1202(Landroid/widget/CursorHandle;I)I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const v18, 0x77359400

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$1302(Landroid/widget/CursorHandle;I)I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    const v18, 0x77359400

    invoke-static/range {v17 .. v18}, Landroid/widget/CursorHandle;->access$1402(Landroid/widget/CursorHandle;I)I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    new-instance v18, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$1;-><init>(Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 624
    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 625
    goto/16 :goto_0

    .line 595
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$500(Landroid/widget/CursorHandle;)I

    move-result v17

    if-nez v17, :cond_4

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    const v18, 0x1020029

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    goto :goto_2

    .line 608
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    new-instance v18, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor$2;-><init>(Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 616
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v17

    const v18, 0x1020029

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;->this$0:Landroid/widget/CursorHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
