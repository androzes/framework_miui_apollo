.class public Lcom/broadcom/bt/app/settings/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getServiceString(Landroid/content/Context;ILcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 1
    .parameter "ctx"
    .parameter "serviceMask"
    .parameter "listManager"

    .prologue
    .line 201
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    .line 202
    const v0, 0x7f0905bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 204
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 205
    const v0, 0x7f0905bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 207
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_2

    .line 208
    const v0, 0x7f0905be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 210
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_3

    .line 211
    const v0, 0x7f0905bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 213
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_4

    .line 214
    const v0, 0x7f0905c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 216
    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_5

    .line 217
    const v0, 0x7f0905c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 219
    :cond_5
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_6

    .line 220
    const v0, 0x7f0905c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 222
    :cond_6
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_7

    .line 223
    const v0, 0x7f0905c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 225
    :cond_7
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_8

    .line 226
    const v0, 0x7f0905c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 228
    :cond_8
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_9

    .line 229
    const v0, 0x7f0905c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 231
    :cond_9
    and-int/lit16 v0, p1, 0x400

    if-lez v0, :cond_a

    .line 232
    const v0, 0x7f0905c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 234
    :cond_a
    and-int/lit16 v0, p1, 0x800

    if-lez v0, :cond_b

    .line 235
    const v0, 0x7f0905c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 237
    :cond_b
    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_c

    .line 238
    const v0, 0x7f0905c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 240
    :cond_c
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_d

    .line 241
    const v0, 0x7f0905c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 243
    :cond_d
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_e

    .line 244
    const v0, 0x7f0905ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 246
    :cond_e
    const v0, 0x8000

    and-int/2addr v0, p1

    if-lez v0, :cond_f

    .line 247
    const v0, 0x7f0905cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 249
    :cond_f
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-lez v0, :cond_10

    .line 250
    const v0, 0x7f0905cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 252
    :cond_10
    const/high16 v0, 0x2

    and-int/2addr v0, p1

    if-lez v0, :cond_11

    .line 253
    const v0, 0x7f0905cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 255
    :cond_11
    const/high16 v0, 0x4

    and-int/2addr v0, p1

    if-lez v0, :cond_12

    .line 256
    const v0, 0x7f0905ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 258
    :cond_12
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-lez v0, :cond_13

    .line 259
    const v0, 0x7f0905cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 261
    :cond_13
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-lez v0, :cond_14

    .line 262
    const v0, 0x7f0905d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 264
    :cond_14
    const/high16 v0, 0x20

    and-int/2addr v0, p1

    if-lez v0, :cond_15

    .line 265
    const v0, 0x7f0905d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 267
    :cond_15
    const/high16 v0, 0x40

    and-int/2addr v0, p1

    if-lez v0, :cond_16

    .line 268
    const v0, 0x7f0905d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 270
    :cond_16
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-lez v0, :cond_17

    .line 271
    const v0, 0x7f0905d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 273
    :cond_17
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-lez v0, :cond_18

    .line 274
    const v0, 0x7f0905d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 276
    :cond_18
    const/high16 v0, 0x200

    and-int/2addr v0, p1

    if-lez v0, :cond_19

    .line 277
    const v0, 0x7f0905d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 279
    :cond_19
    const/high16 v0, 0x400

    and-int/2addr v0, p1

    if-lez v0, :cond_1a

    .line 280
    const v0, 0x7f0905d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 283
    :cond_1a
    return-void
.end method

.method public static getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 10
    .parameter "ctx"
    .parameter "uuid"
    .parameter "listManager"

    .prologue
    const v8, 0x7f0905f4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "BluetoothServicesMap"

    .line 53
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, uuidStr:Ljava/lang/String;
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez v3, :cond_0

    .line 186
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v4, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, uuidPrefixStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 67
    .local v1, uuidPrefix:I
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 185
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    const v4, 0x7f0905d8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :sswitch_1
    const v4, 0x7f0905d9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :sswitch_2
    const v4, 0x7f0905da

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :sswitch_3
    const v4, 0x7f0905db

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :sswitch_4
    const v4, 0x7f0905dc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :sswitch_5
    const v4, 0x7f0905dd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :sswitch_6
    const v4, 0x7f0905de

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :sswitch_7
    const v4, 0x7f0905df

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :sswitch_8
    const v4, 0x7f0905e0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :sswitch_9
    const v4, 0x7f0905e1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :sswitch_a
    const v4, 0x7f0905e2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :sswitch_b
    const v4, 0x7f0905e3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :sswitch_c
    const v4, 0x7f0905e4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :sswitch_d
    const v4, 0x7f0905e5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :sswitch_e
    const v4, 0x7f0905e6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :sswitch_f
    const v4, 0x7f0905e7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :sswitch_10
    const v4, 0x7f0905e8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :sswitch_11
    const v4, 0x7f0905e9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :sswitch_12
    const v4, 0x7f0905ea

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :sswitch_13
    const v4, 0x7f0905eb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :sswitch_14
    const v4, 0x7f0905ec

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :sswitch_15
    const v4, 0x7f0905ed

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :sswitch_16
    const v4, 0x7f0905ee

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :sswitch_17
    const v4, 0x7f0905ef

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :sswitch_18
    const v4, 0x7f0905f0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :sswitch_19
    const v4, 0x7f0905f1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :sswitch_1a
    const v4, 0x7f0905f2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :sswitch_1b
    const v4, 0x7f0905f3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x1101 -> :sswitch_d
        0x1102 -> :sswitch_18
        0x1103 -> :sswitch_e
        0x1104 -> :sswitch_14
        0x1105 -> :sswitch_9
        0x1106 -> :sswitch_a
        0x1108 -> :sswitch_3
        0x1109 -> :sswitch_15
        0x110a -> :sswitch_0
        0x110b -> :sswitch_1
        0x110c -> :sswitch_8
        0x110d -> :sswitch_2
        0x110e -> :sswitch_7
        0x1110 -> :sswitch_16
        0x1111 -> :sswitch_17
        0x1112 -> :sswitch_4
        0x1115 -> :sswitch_11
        0x1116 -> :sswitch_12
        0x1117 -> :sswitch_13
        0x111a -> :sswitch_19
        0x111e -> :sswitch_5
        0x111f -> :sswitch_6
        0x1122 -> :sswitch_c
        0x1124 -> :sswitch_10
        0x112d -> :sswitch_1b
        0x1130 -> :sswitch_b
        0x1203 -> :sswitch_f
        0x1305 -> :sswitch_1a
    .end sparse-switch
.end method
