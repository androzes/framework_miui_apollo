.class public Lcom/broadcom/bt/service/bpp/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public JobState:I

.field public PrinterState:I

.field public PrinterStateReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/broadcom/bt/service/bpp/JobStatus$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/JobStatus$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/JobStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "jobState"
    .parameter "printerState"
    .parameter "printerStateReason"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    .line 97
    iput p2, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    .line 98
    iput p3, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/JobStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/JobStatus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/JobStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    .line 131
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 117
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
