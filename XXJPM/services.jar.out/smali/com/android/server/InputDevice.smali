.class public Lcom/android/server/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputDevice$TransformInfo;,
        Lcom/android/server/InputDevice$AbsoluteInfo;,
        Lcom/android/server/InputDevice$MotionState;
    }
.end annotation


# static fields
.field static final CALIBRATION_FILE:Ljava/lang/String; = "/data/system/tslib/pointercal"

.field static final DEBUG_HACKS:Z = false

.field static final DEBUG_MOUSE:Z = false

.field static final DEBUG_POINTERS:Z = false

.field private static final JUMPY_DROP_LIMIT:I = 0x3

.field private static final JUMPY_EPSILON_DIVISOR:I = 0xd4

.field private static final JUMPY_TRANSITION_DROPS:I = 0x3

.field static final MAX_POINTERS:I = 0x5

.field static final TAG:Ljava/lang/String; = "InputDevice"

.field static final TRACKBALL_MOVEMENT_THRESHOLD:I = 0x6


# instance fields
.field final absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absX:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absY:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final classes:I

.field final curTouchVals:[I

.field final id:I

.field final mAbs:Lcom/android/server/InputDevice$MotionState;

.field mKeyDownTime:J

.field mMetaKeysState:I

.field final mRel:Lcom/android/server/InputDevice$MotionState;

.field final name:Ljava/lang/String;

.field final tInfo:Lcom/android/server/InputDevice$TransformInfo;


# direct methods
.method constructor <init>(IILjava/lang/String;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;)V
    .locals 12
    .parameter "_id"
    .parameter "_classes"
    .parameter "_name"
    .parameter "_absX"
    .parameter "_absY"
    .parameter "_absPressure"
    .parameter "_absSize"

    .prologue
    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 72
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/InputDevice;->mMetaKeysState:I

    .line 76
    const/16 v9, 0x8

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/server/InputDevice;->curTouchVals:[I

    .line 78
    new-instance v9, Lcom/android/server/InputDevice$MotionState;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/server/InputDevice$MotionState;-><init>(II)V

    iput-object v9, p0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .line 79
    new-instance v9, Lcom/android/server/InputDevice$MotionState;

    const/4 v10, 0x6

    const/4 v11, 0x6

    invoke-direct {v9, v10, v11}, Lcom/android/server/InputDevice$MotionState;-><init>(II)V

    iput-object v9, p0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    .line 1173
    iput p1, p0, Lcom/android/server/InputDevice;->id:I

    .line 1174
    iput p2, p0, Lcom/android/server/InputDevice;->classes:I

    .line 1175
    iput-object p3, p0, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    .line 1176
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1177
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1178
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1179
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1181
    const/4 v7, 0x0

    .line 1183
    .local v7, t:Lcom/android/server/InputDevice$TransformInfo;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/data/system/tslib/pointercal"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v3, is:Ljava/io/FileInputStream;
    const/16 v9, 0x40

    new-array v5, v9, [B

    .line 1185
    .local v5, mBuffer:[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 1186
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1187
    if-lez v4, :cond_1

    .line 1189
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1190
    aget-byte v9, v5, v2

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    aget-byte v9, v5, v2

    if-nez v9, :cond_2

    .line 1194
    :cond_0
    move v4, v2

    .line 1196
    .end local v2           #i:I
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v5, v10, v11, v4}, Ljava/lang/String;-><init>([BIII)V

    invoke-direct {v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v6, st:Ljava/util/StringTokenizer;
    new-instance v8, Lcom/android/server/InputDevice$TransformInfo;

    invoke-direct {v8}, Lcom/android/server/InputDevice$TransformInfo;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v7           #t:Lcom/android/server/InputDevice$TransformInfo;
    .local v8, t:Lcom/android/server/InputDevice$TransformInfo;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->x1:F

    .line 1200
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->y1:F

    .line 1201
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->z1:F

    .line 1202
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->x2:F

    .line 1203
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->y2:F

    .line 1204
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->z2:F

    .line 1205
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/InputDevice$TransformInfo;->s:F
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 1209
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #mBuffer:[B
    .end local v6           #st:Ljava/util/StringTokenizer;
    .end local v8           #t:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v7       #t:Lcom/android/server/InputDevice$TransformInfo;
    :goto_1
    iput-object v7, p0, Lcom/android/server/InputDevice;->tInfo:Lcom/android/server/InputDevice$TransformInfo;

    .line 1211
    return-void

    .line 1189
    .restart local v2       #i:I
    .restart local v3       #is:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    .restart local v5       #mBuffer:[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #mBuffer:[B
    :catch_0
    move-exception v9

    goto :goto_1

    .end local v7           #t:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v3       #is:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    .restart local v5       #mBuffer:[B
    .restart local v6       #st:Ljava/util/StringTokenizer;
    .restart local v8       #t:Lcom/android/server/InputDevice$TransformInfo;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #t:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v7       #t:Lcom/android/server/InputDevice$TransformInfo;
    goto :goto_1

    .line 1206
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #mBuffer:[B
    .end local v6           #st:Ljava/util/StringTokenizer;
    :catch_2
    move-exception v9

    goto :goto_1

    .end local v7           #t:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v3       #is:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    .restart local v5       #mBuffer:[B
    .restart local v6       #st:Ljava/util/StringTokenizer;
    .restart local v8       #t:Lcom/android/server/InputDevice$TransformInfo;
    :catch_3
    move-exception v9

    move-object v7, v8

    .end local v8           #t:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v7       #t:Lcom/android/server/InputDevice$TransformInfo;
    goto :goto_1
.end method
