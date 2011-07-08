.class public final enum Lsiso/vt/VTManager$StackState;
.super Ljava/lang/Enum;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsiso/vt/VTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsiso/vt/VTManager$StackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_IC_START_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_IC_START_SUCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_FAIL:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_NO_DISKSPACE:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_START_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_STOP_FAILED:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_REC_TIMEOUT:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_CALL_DISCONNECTED:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_END_CALL_IN_PROGRESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$StackState;

.field public static final enum VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum VTMNGR_DECODE_JPEG_FAILURE:Lsiso/vt/VTManager$StackState;

.field public static final enum VTMNGR_FIRST_FRAME_INDICATION:Lsiso/vt/VTManager$StackState;

.field public static final enum VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$StackState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_START_CALL_SUCCESS"

    invoke-direct {v0, v1, v3}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 60
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_START_CALL_FAILURE"

    invoke-direct {v0, v1, v4}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 61
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_SESSION_STOP_SUCCESS"

    invoke-direct {v0, v1, v5}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 62
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_SESSION_STOP_FAILED"

    invoke-direct {v0, v1, v6}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    .line 63
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_END_CALL_IN_PROGRESS"

    invoke-direct {v0, v1, v7}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_END_CALL_IN_PROGRESS:Lsiso/vt/VTManager$StackState;

    .line 64
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_PROTOCOL_ERR_IND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$StackState;

    .line 65
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_VT_CALL_DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_VT_CALL_DISCONNECTED:Lsiso/vt/VTManager$StackState;

    .line 66
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_IC_START_SUCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$StackState;

    .line 67
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_IC_START_FAILURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 68
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_IC_STOP_SUCESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$StackState;

    .line 69
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_IC_STOP_FAILURE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 70
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_START_SUCCESS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 71
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_START_FAILURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 72
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_STOP_SUCCESS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 73
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_STOP_FAILED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    .line 74
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_CANCEL_SUCCESS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 75
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_PROTOCOL_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$StackState;

    .line 76
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_NO_DISKSPACE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_NO_DISKSPACE:Lsiso/vt/VTManager$StackState;

    .line 77
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_SUCCESS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_SUCCESS:Lsiso/vt/VTManager$StackState;

    .line 78
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_FAIL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_FAIL:Lsiso/vt/VTManager$StackState;

    .line 79
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "H324M_REC_TIMEOUT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->H324M_REC_TIMEOUT:Lsiso/vt/VTManager$StackState;

    .line 80
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "VTMNGR_FIRST_FRAME_INDICATION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->VTMNGR_FIRST_FRAME_INDICATION:Lsiso/vt/VTManager$StackState;

    .line 81
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "VTMNGR_DECODE_JPEG_FAILURE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->VTMNGR_DECODE_JPEG_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 82
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "VTMNGR_SURFACE_INIT_FAILURE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 83
    new-instance v0, Lsiso/vt/VTManager$StackState;

    const-string v1, "VTMNGR_CAMERA_START_FAILURE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lsiso/vt/VTManager$StackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsiso/vt/VTManager$StackState;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$StackState;

    .line 58
    const/16 v0, 0x19

    new-array v0, v0, [Lsiso/vt/VTManager$StackState;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v1, v0, v3

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v1, v0, v4

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v1, v0, v5

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    aput-object v1, v0, v6

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_END_CALL_IN_PROGRESS:Lsiso/vt/VTManager$StackState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_VT_CALL_DISCONNECTED:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_NO_DISKSPACE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_SUCCESS:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_FAIL:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lsiso/vt/VTManager$StackState;->H324M_REC_TIMEOUT:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lsiso/vt/VTManager$StackState;->VTMNGR_FIRST_FRAME_INDICATION:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lsiso/vt/VTManager$StackState;->VTMNGR_DECODE_JPEG_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lsiso/vt/VTManager$StackState;->VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lsiso/vt/VTManager$StackState;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$StackState;

    aput-object v2, v0, v1

    sput-object v0, Lsiso/vt/VTManager$StackState;->$VALUES:[Lsiso/vt/VTManager$StackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsiso/vt/VTManager$StackState;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lsiso/vt/VTManager$StackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lsiso/vt/VTManager$StackState;

    return-object p0
.end method

.method public static final values()[Lsiso/vt/VTManager$StackState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lsiso/vt/VTManager$StackState;->$VALUES:[Lsiso/vt/VTManager$StackState;

    invoke-virtual {v0}, [Lsiso/vt/VTManager$StackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsiso/vt/VTManager$StackState;

    return-object v0
.end method
