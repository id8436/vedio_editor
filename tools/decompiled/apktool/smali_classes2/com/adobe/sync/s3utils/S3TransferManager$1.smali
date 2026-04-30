.class Lcom/adobe/sync/s3utils/S3TransferManager$1;
.super Ljava/lang/Object;
.source "S3TransferManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

.field final synthetic val$assetGuid:Ljava/lang/String;

.field final synthetic val$assetPath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;


# direct methods
.method constructor <init>(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    iput-object p2, p0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    iput-object p3, p0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 80
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    invoke-static {v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$000(Lcom/adobe/sync/s3utils/S3TransferManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-interface {v2}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 155
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/sync/ComponentUtils;->getExtensionFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static {v2, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$100(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-string/jumbo v2, "S3Transfer"

    const-string/jumbo v3, "s3 initialize temp failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static {v2, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$200(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static {v2, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$200(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static/range {v2 .. v7}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$300(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v3

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "202"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static/range {v2 .. v7}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$300(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    :cond_2
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 105
    const-string/jumbo v3, "assetARN"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 106
    const-string/jumbo v3, "arn:aws:s3"

    .line 107
    const-string/jumbo v3, "multipart-href"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 108
    const-string/jumbo v3, "accessKey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    const-string/jumbo v3, "secretKey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    const-string/jumbo v3, "sessionToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    const-string/jumbo v3, "uploadId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 115
    const/4 v4, 0x0

    const-string/jumbo v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 116
    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 117
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 118
    const-string/jumbo v2, "S3Transfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bucket : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   host : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    move-object/from16 v18, v0

    invoke-static/range {v7 .. v18}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$400(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v2, "headers"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    const-string/jumbo v3, "ETag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->getAssetMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    move-object/from16 v33, v0

    move-wide/from16 v20, v16

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v14

    invoke-static/range {v18 .. v33}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$500(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v2, "code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "409"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetPath:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    move-object/from16 v33, v0

    move-wide/from16 v20, v16

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v14

    invoke-static/range {v18 .. v33}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$500(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    .line 137
    :cond_3
    const/16 v2, 0x14

    .line 138
    :goto_1
    if-lez v2, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$assetGuid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$600(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    invoke-static {v4, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$700(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    const-wide/16 v4, 0x3a98

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 142
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 145
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-interface {v2}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCompletion()V

    goto/16 :goto_0

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->this$0:Lcom/adobe/sync/s3utils/S3TransferManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/sync/s3utils/S3TransferManager$1;->val$listener:Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;

    invoke-static {v2, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->access$200(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
