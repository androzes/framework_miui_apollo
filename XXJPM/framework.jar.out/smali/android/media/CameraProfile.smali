.class public Landroid/media/CameraProfile;
.super Ljava/lang/Object;
.source "CameraProfile.java"


# static fields
.field public static final QUALITY_HIGH:I = 0x2

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_MEDIUM:I = 0x1

.field private static final sJpegEncodingQualityParameters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/media/CameraProfile;->native_init()V

    .line 61
    invoke-static {}, Landroid/media/CameraProfile;->getImageEncodingQualityLevels()[I

    move-result-object v0

    sput-object v0, Landroid/media/CameraProfile;->sJpegEncodingQualityParameters:[I

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageEncodingQualityLevels()[I
    .locals 6

    .prologue
    .line 65
    invoke-static {}, Landroid/media/CameraProfile;->native_get_num_image_encoding_quality_levels()I

    move-result v2

    .line 66
    .local v2, nLevels:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 67
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Jpeg encoding quality levels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_0
    new-array v1, v2, [I

    .line 71
    .local v1, levels:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 72
    invoke-static {v0}, Landroid/media/CameraProfile;->native_get_image_encoding_quality_level(I)I

    move-result v3

    aput v3, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 75
    return-object v1
.end method

.method public static getJpegEncodingQualityParameter(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 52
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    sget-object v0, Landroid/media/CameraProfile;->sJpegEncodingQualityParameters:[I

    aget v0, v0, p0

    return v0
.end method

.method private static final native native_get_image_encoding_quality_level(I)I
.end method

.method private static final native native_get_num_image_encoding_quality_levels()I
.end method

.method private static final native native_init()V
.end method
