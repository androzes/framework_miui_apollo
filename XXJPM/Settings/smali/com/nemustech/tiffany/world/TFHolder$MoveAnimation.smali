.class public abstract Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
.super Lcom/nemustech/tiffany/world/TFAnimation;
.source "TFHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MoveAnimation"
.end annotation


# instance fields
.field protected mAcceleration:F

.field protected mAutoRepositionDuration:I

.field protected mAutoRepositionMode:Z

.field protected mINITIAL_V:F

.field protected mInitialS:F

.field protected mInitialV:F

.field protected mModelInertia:F

.field protected mOriginalAutoRepositionValue:Z

.field protected mS:F

.field protected mV:F

.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFHolder;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFHolder;Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 2
    .parameter
    .parameter "holder"

    .prologue
    const/4 v1, 0x1

    .line 1043
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->this$0:Lcom/nemustech/tiffany/world/TFHolder;

    .line 1044
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFAnimation;-><init>()V

    .line 1234
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mModelInertia:F

    .line 1235
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    .line 1236
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mOriginalAutoRepositionValue:Z

    .line 1237
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionDuration:I

    .line 1247
    const v0, 0x3b83126f

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mINITIAL_V:F

    .line 1045
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mSubject:Lcom/nemustech/tiffany/world/TFObject;

    .line 1046
    return-void
.end method


# virtual methods
.method protected calcDuration(FFF)F
    .locals 1
    .parameter "initialV"
    .parameter "finalV"
    .parameter "accel"

    .prologue
    .line 1219
    sub-float v0, p2, p1

    div-float/2addr v0, p3

    return v0
.end method

.method protected calcS(FFFF)F
    .locals 3
    .parameter "initialS"
    .parameter "initialV"
    .parameter "accel"
    .parameter "t"

    .prologue
    .line 1227
    mul-float v0, p2, p4

    add-float/2addr v0, p1

    mul-float v1, p3, p4

    mul-float/2addr v1, p4

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected calcV(FFF)F
    .locals 1
    .parameter "initialV"
    .parameter "accel"
    .parameter "t"

    .prologue
    .line 1223
    mul-float v0, p2, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public getHolder()Lcom/nemustech/tiffany/world/TFHolder;
    .locals 0

    .prologue
    .line 1231
    iget-object p0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mSubject:Lcom/nemustech/tiffany/world/TFObject;

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFHolder;

    return-object p0
.end method

.method public repositionHeadModel()Z
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->repositionHeadModel(I)Z

    move-result v0

    return v0
.end method

.method public repositionHeadModel(I)Z
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v8, 0x1

    .line 1100
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nemustech/tiffany/world/TFHolder;->getHeadDeviation()F

    move-result v3

    .line 1101
    .local v3, headDeviation:F
    const-string v5, "TFHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Repositioning Head - current headDeviation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    if-eqz p1, :cond_1

    .line 1104
    const/high16 v5, -0x4000

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mModelInertia:F

    mul-float v2, v5, v6

    .line 1105
    .local v2, distance:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    const v6, 0x3f666666

    mul-float v0, v5, v6

    .line 1106
    .local v0, absoluteMax:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    .line 1107
    neg-float v5, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    div-float v2, v5, v3

    .line 1109
    :cond_0
    int-to-float v5, p1

    div-float v4, v2, v5

    .line 1110
    .local v4, velocity:F
    int-to-float v5, p1

    div-float v1, v4, v5

    .line 1111
    .local v1, acceleration:F
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 1112
    invoke-virtual {p0, v4, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(FF)V

    move v5, v8

    .line 1118
    .end local v0           #absoluteMax:F
    .end local v1           #acceleration:F
    .end local v2           #distance:F
    .end local v4           #velocity:F
    :goto_0
    return v5

    .line 1116
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/world/TFHolder;->setHeadDeviation(F)Z

    .line 1117
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1118
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setAutoRepositionMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1143
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    .line 1144
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mOriginalAutoRepositionValue:Z

    .line 1145
    return-void
.end method

.method public setAutoRepositionMode(ZI)V
    .locals 0
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setAutoRepositionMode(Z)V

    .line 1162
    iput p2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionDuration:I

    .line 1163
    return-void
.end method

.method public setInertia(F)V
    .locals 0
    .parameter "inertia"

    .prologue
    .line 1139
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mModelInertia:F

    .line 1140
    return-void
.end method

.method public setInitialVelocity(F)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1191
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mINITIAL_V:F

    .line 1192
    return-void
.end method

.method public setMove(FF)V
    .locals 3
    .parameter "initialV"
    .parameter "accel"

    .prologue
    const/4 v2, 0x0

    .line 1177
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 1179
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    .line 1180
    iput p2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    .line 1181
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1182
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    neg-float v1, v1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    .line 1185
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    invoke-virtual {p0, p1, v2, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->calcDuration(FFF)F

    move-result v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1187
    .local v0, t:I
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setDuration(I)V

    .line 1188
    return-void
.end method

.method public setMove(FI)V
    .locals 1
    .parameter "initialV"
    .parameter "duration"

    .prologue
    .line 1166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 1167
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    .line 1169
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setDuration(I)V

    .line 1170
    return-void
.end method

.method public setMoveOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1195
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mINITIAL_V:F

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMoveOffset(IF)V

    .line 1196
    return-void
.end method

.method public setMoveOffset(IF)V
    .locals 4
    .parameter "offset"
    .parameter "speed"

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, remainTime:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getDuration()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getTime()I

    move-result v3

    sub-int v0, v2, v3

    .line 1206
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 1208
    iput p2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    .line 1209
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAcceleration:F

    .line 1210
    if-gez p1, :cond_1

    .line 1211
    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    neg-float v2, v2

    iput v2, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    .line 1212
    :cond_1
    int-to-float v2, p1

    iget v3, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mInitialV:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1213
    .local v1, t:I
    add-int/2addr v1, v0

    .line 1214
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setDuration(I)V

    .line 1215
    return-void
.end method

.method public setMoveOffset(II)V
    .locals 2
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 1199
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMoveOffset(IF)V

    .line 1200
    return-void
.end method

.method protected setOriginalAutoRepositionMode()V
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mOriginalAutoRepositionValue:Z

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    .line 1153
    return-void
.end method

.method protected setTempAutoRepositionMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    .line 1149
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1082
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->start()V

    .line 1083
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mSubject:Lcom/nemustech/tiffany/world/TFObject;

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFHolder;->onBindingAnimationStart(Lcom/nemustech/tiffany/world/TFAnimation;)V

    .line 1084
    return-void
.end method

.method public startMoveAnimation(FF)V
    .locals 1
    .parameter "velocity"
    .parameter "a"

    .prologue
    .line 1070
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMove(FF)V

    .line 1071
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->start()V

    .line 1072
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1073
    return-void
.end method

.method public startMoveAnimation(FI)V
    .locals 1
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 1075
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMove(FI)V

    .line 1076
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->start()V

    .line 1077
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1078
    return-void
.end method

.method public startMoveAnimation(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMoveOffset(I)V

    .line 1051
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->start()V

    .line 1052
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1053
    return-void
.end method

.method public startMoveAnimation(IF)V
    .locals 1
    .parameter "offset"
    .parameter "speed"

    .prologue
    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMoveOffset(IF)V

    .line 1064
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->start()V

    .line 1065
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1066
    return-void
.end method

.method public startMoveAnimation(II)V
    .locals 1
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 1057
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setMoveOffset(II)V

    .line 1058
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->start()V

    .line 1059
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 1060
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1088
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->stop()V

    .line 1089
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mSubject:Lcom/nemustech/tiffany/world/TFObject;

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFHolder;->onBindingAnimationEnd(Lcom/nemustech/tiffany/world/TFAnimation;)V

    .line 1090
    return-void
.end method
