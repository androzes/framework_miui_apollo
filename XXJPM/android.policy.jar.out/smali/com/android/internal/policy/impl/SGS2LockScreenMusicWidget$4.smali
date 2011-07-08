.class Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;
.super Ljava/lang/Object;
.source "SGS2LockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMusicMovingBoxCurrentMarginBottom:I

.field private mMusicMovingBoxCurrentMarginTop:I

.field private mMusicMovingBoxOffset:I

.field private mMusicMovingBoxOrinalY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x32

    const/4 v4, 0x0

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 353
    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 357
    :pswitch_0
    iput v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    goto :goto_0

    .line 361
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    .line 362
    const-string v1, "SGS2LockScreenMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicMovingBoxOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 366
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto :goto_0

    .line 367
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 369
    iput v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto :goto_0

    .line 373
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_4

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    .line 384
    :cond_3
    :goto_1
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v1, v2, :cond_5

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v2, v3, v6}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 391
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 376
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_3

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 378
    iput v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto :goto_1

    .line 389
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;I)V

    goto :goto_2

    .line 394
    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_7

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;III)V

    .line 400
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 398
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;I)V

    goto :goto_3

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
