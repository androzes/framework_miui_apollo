.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 136
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "quality"
    .parameter "fileFormat"
    .parameter "videoCodec"
    .parameter "videoBitRate"
    .parameter "videoFrameRate"
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "audioCodec"
    .parameter "audioBitRate"
    .parameter "audioSampleRate"
    .parameter "audioChannels"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 153
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 154
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 155
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 156
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 157
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 158
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 159
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 160
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 161
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 162
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 163
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 164
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "quality"

    .prologue
    .line 126
    if-ltz p0, :cond_0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, errMessage:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v0           #errMessage:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method private static final native native_get_camcorder_profile(I)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_init()V
.end method
