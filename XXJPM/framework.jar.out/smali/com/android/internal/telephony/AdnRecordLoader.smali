.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final ACCESS_TO_PB_ADD:I = 0x1

.field static final ACCESS_TO_PB_DELETE:I = 0x2

.field static final ACCESS_TO_PB_EDIT:I = 0x3

.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_PB_ENTRY_ACCESS_DONE:I = 0x7

.field static final EVENT_PB_ENTRY_LOAD_ALL_DONE:I = 0x6

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static LOG_TAG:Ljava/lang/String; = null

.field static final NO_INDEX_FOR_ADD_TO_PHONEBOOK:I = -0x2


# instance fields
.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field extensionEF:I

.field pendingExtLoads:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method addPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 176
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 177
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 178
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addPBEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    iget-object v4, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v6, v2, v3

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move v2, p2

    move-object v7, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method deletePBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 191
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 192
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 193
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEF - delete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePBEntry index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    iget-object v4, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v6, v2, v3

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move v2, p2

    move v3, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method editPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 159
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 160
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 161
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 162
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editPBEntry index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v4, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v6, v2, v3

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move v2, p2

    move v3, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 214
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 390
    .end local p1
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    if-nez v4, :cond_1

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    move-object v5, v0

    iput-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 395
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 397
    :cond_1
    :goto_1
    return-void

    .line 216
    .restart local p1
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 217
    .local v12, ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v10, v0

    .line 219
    .local v10, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 220
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get EF record size failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 379
    .local v14, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iput-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 385
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 224
    .end local v14           #exc:Ljava/lang/RuntimeException;
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v12       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 230
    .local v17, recordSize:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v17, v5

    if-le v4, v5, :cond_4

    .line 231
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 235
    :cond_4
    const/4 v4, 0x0

    aget v4, v17, v4

    invoke-virtual {v10, v4}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 237
    .local v7, data:[B
    if-nez v7, :cond_5

    .line 238
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "worong ADN format"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 245
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 249
    .end local v7           #data:[B
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #recordSize:[I
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 250
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 251
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "update EF adn record failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 254
    :cond_6
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 255
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 258
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 259
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .line 261
    .restart local v7       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    .line 262
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 272
    :cond_7
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v5, v0

    invoke-direct {v10, v4, v5, v7}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 273
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 275
    invoke-virtual {v10}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    iget v6, v10, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .end local v7           #data:[B
    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 289
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 290
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .line 291
    .restart local v7       #data:[B
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v10, v0

    .line 293
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 294
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 297
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADN extention EF: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v10, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 310
    .end local v7           #data:[B
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 311
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 313
    .local v13, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    .line 314
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 317
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 319
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 321
    const/4 v15, 0x0

    .local v15, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, s:I
    :goto_2
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 322
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v4, v0

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    move-object v0, v10

    move v1, v4

    move v2, v5

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 323
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v10}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    iget v6, v10, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 321
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 340
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v15           #i:I
    .end local v18           #s:I
    .restart local p1
    :pswitch_5
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string v5, "EVENT_PB_ENTRY_LOAD_ALL_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 343
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 345
    .local v11, adnDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 346
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ar.exception != null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 350
    :cond_b
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 357
    .end local v11           #adnDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_6
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string v5, "EVENT_PB_ENTRY_ACCESS_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 360
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v10, v0

    .line 362
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_c

    .line 363
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Acess PB record failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 367
    :cond_c
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/4 v4, 0x0

    aget v16, p1, v4

    .line 368
    .local v16, index:I
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_PB_ENTRY_ACCESS_DONE - index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 371
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 372
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 109
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 115
    return-void
.end method

.method loadAllFromPBEntry(ILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "response"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 147
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V

    .line 153
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 89
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 90
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 91
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 97
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 132
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 133
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 134
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 135
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 136
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 140
    return-void
.end method
