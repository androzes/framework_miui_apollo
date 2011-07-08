.class Lcom/android/settings/ManageApplications$1;
.super Landroid/os/Handler;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 273
    const/16 v19, 0x0

    .line 275
    .local v19, pkgName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 276
    .local v6, data:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 277
    const-string v26, "p"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 279
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 281
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_2

    const-string v26, "ManageApplications"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Message INIT_PKG_INFO, justCreated = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settings/ManageApplications;->access$100(Lcom/android/settings/ManageApplications;)Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2
    const/16 v17, 0x0

    .line 283
    .local v17, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$100(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_3

    const-string v26, "ManageApplications"

    const-string v27, "List already created"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v17

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$200(Lcom/android/settings/ManageApplications;Ljava/util/List;)Z

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;Ljava/util/List;I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x9

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 294
    .end local v17           #newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "ManageApplications"

    const-string v27, "Message COMPUTE_BULK_PKG_SIZE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_5
    const-string v26, "ps"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 296
    .local v20, pkgs:[Ljava/lang/String;
    const-string v26, "ss"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v24

    .line 297
    .local v24, sizes:[J
    const-string v26, "fs"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, formatted:[Ljava/lang/String;
    if-eqz v20, :cond_6

    if-eqz v24, :cond_6

    if-nez v8, :cond_7

    .line 299
    :cond_6
    const-string v26, "ManageApplications"

    const-string v27, "Ignoring message"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateSizes([Ljava/lang/String;[J[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v8           #formatted:[Ljava/lang/String;
    .end local v20           #pkgs:[Ljava/lang/String;
    .end local v24           #sizes:[J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$702(Lcom/android/settings/ManageApplications;Z)Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$802(Lcom/android/settings/ManageApplications;Z)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x9

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 310
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_8

    const-string v26, "ManageApplications"

    const-string v27, "Message REMOVE_PKG"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_8
    if-nez v19, :cond_9

    .line 312
    const-string v26, "ManageApplications"

    const-string v27, "Ignoring message:REMOVE_PKG for null pkgName"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 317
    .local v5, currB:Ljava/lang/Boolean;
    if-eqz v5, :cond_a

    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 318
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 322
    .end local v5           #currB:Ljava/lang/Boolean;
    :cond_b
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v18, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 327
    .end local v18           #pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_c

    const-string v26, "ManageApplications"

    const-string v27, "Message REORDER_LIST"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 329
    .local v16, menuOption:I
    const/16 v26, 0x4

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    const/16 v26, 0x5

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 332
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$1002(Lcom/android/settings/ManageApplications;I)I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_e

    const-string v26, "ManageApplications"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Changing sort order to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortList(I)V

    goto/16 :goto_0

    .line 337
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$302(Lcom/android/settings/ManageApplications;I)I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->resetAppList(I)Z

    move-result v21

    .line 341
    .local v21, ret:Z
    if-nez v21, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$302(Lcom/android/settings/ManageApplications;I)I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$1100(Lcom/android/settings/ManageApplications;II)V

    goto/16 :goto_0

    .line 350
    .end local v16           #menuOption:I
    .end local v21           #ret:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_10

    const-string v26, "ManageApplications"

    const-string v27, "Message ADD_PKG_START"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_10
    if-nez v19, :cond_11

    .line 352
    const-string v26, "ManageApplications"

    const-string v27, "Ignoring message:ADD_PKG_START for null pkgName"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 356
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 357
    .restart local v5       #currB:Ljava/lang/Boolean;
    if-eqz v5, :cond_13

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 358
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    sget-object v27, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 363
    .end local v5           #currB:Ljava/lang/Boolean;
    :cond_14
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 368
    .local v12, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$PkgSizeObserver;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$PkgSizeObserver;->invokeGetSizeInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .end local v12           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v26

    move-object/from16 v7, v26

    .line 365
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v26, "ManageApplications"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Couldnt find application info for:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_15

    const-string v26, "ManageApplications"

    const-string v27, "Message ADD_PKG_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_15
    if-nez v19, :cond_16

    .line 373
    const-string v26, "ManageApplications"

    const-string v27, "Ignoring message:ADD_PKG_START for null pkgName"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    :cond_16
    const-string v26, "passed"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    .line 377
    .local v25, status:Z
    if-eqz v25, :cond_1

    .line 378
    const-string v26, "s"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 379
    .local v22, size:J
    const-string v26, "f"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, formattedSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->isInstalled(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_17

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->addToList(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->updatePackage(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .end local v9           #formattedSize:Ljava/lang/String;
    .end local v22           #size:J
    .end local v25           #status:Z
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/Map;

    .line 389
    .local v15, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-eqz v15, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateLabels(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 394
    .end local v15           #labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/util/Map;

    .line 395
    .local v11, iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v11, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateIcons(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 400
    .end local v11           #iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$1202(Lcom/android/settings/ManageApplications;Z)Z

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x9

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 404
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$1600(Lcom/android/settings/ManageApplications$AppInfoCache;)Z

    move-result v26

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_18

    const-string v26, "ManageApplications"

    const-string v27, "Using cache to populate list view"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1800(Lcom/android/settings/ManageApplications;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$1702(Lcom/android/settings/ManageApplications;Z)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$802(Lcom/android/settings/ManageApplications;Z)Z

    .line 410
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1900(Lcom/android/settings/ManageApplications;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 414
    .local v14, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 415
    .local v13, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    .end local v13           #key:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 424
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_1e

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$2100(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$2200(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_0

    .line 429
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$2300(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_0

    .line 432
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-eqz v26, :cond_1f

    const-string v26, "ManageApplications"

    const-string v27, "Initing list view for very first time"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1800(Lcom/android/settings/ManageApplications;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/settings/ManageApplications;->access$1702(Lcom/android/settings/ManageApplications;Z)Z

    .line 437
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$700(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_21

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$2200(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_0

    .line 439
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/ManageApplications;->access$2300(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method
