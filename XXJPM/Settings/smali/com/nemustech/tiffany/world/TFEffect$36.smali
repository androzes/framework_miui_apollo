.class Lcom/nemustech/tiffany/world/TFEffect$36;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 2733
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide v7, 0x3f50624dd2f1a9fcL

    const/high16 v5, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2734
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 2735
    .local v1, position:[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 2736
    .local v0, angle:[F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/world/TFObject;->getLocation([F)V

    .line 2737
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    invoke-virtual {v2, v0}, Lcom/nemustech/tiffany/world/TFObject;->getAngle([F)V

    .line 2739
    packed-switch p2, :pswitch_data_0

    .line 2796
    :goto_0
    :pswitch_0
    const-string v2, "TFEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " degreeX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " degreeY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    return v9

    .line 2741
    :pswitch_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    float-to-double v3, v3

    sub-double/2addr v3, v7

    double-to-float v3, v3

    aput v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto :goto_0

    .line 2744
    :pswitch_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    float-to-double v3, v3

    add-double/2addr v3, v7

    double-to-float v3, v3

    aput v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto :goto_0

    .line 2747
    :pswitch_3
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    float-to-double v4, v4

    add-double/2addr v4, v7

    double-to-float v4, v4

    aput v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2750
    :pswitch_4
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    float-to-double v4, v4

    sub-double/2addr v4, v7

    double-to-float v4, v4

    aput v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2753
    :pswitch_5
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2756
    :pswitch_6
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2759
    :pswitch_7
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2762
    :pswitch_8
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL

    sub-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v10

    aget v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2765
    :pswitch_9
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2768
    :pswitch_a
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2771
    :pswitch_b
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2774
    :pswitch_c
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2777
    :pswitch_d
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2780
    :pswitch_e
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v1, v9

    aget v4, v1, v10

    aget v5, v1, v11

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v1, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    goto/16 :goto_0

    .line 2783
    :pswitch_f
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v0, v9

    add-float/2addr v3, v5

    aput v3, v0, v9

    aget v4, v0, v10

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFI)V

    goto/16 :goto_0

    .line 2786
    :pswitch_10
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v0, v9

    sub-float/2addr v3, v5

    aput v3, v0, v9

    aget v4, v0, v10

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFI)V

    goto/16 :goto_0

    .line 2789
    :pswitch_11
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v0, v9

    aget v4, v0, v10

    sub-float/2addr v4, v5

    aput v4, v0, v10

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFI)V

    goto/16 :goto_0

    .line 2792
    :pswitch_12
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$36;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect;->mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

    aget v3, v0, v9

    aget v4, v0, v10

    add-float/2addr v4, v5

    aput v4, v0, v10

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFI)V

    goto/16 :goto_0

    .line 2739
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_11
        :pswitch_12
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
