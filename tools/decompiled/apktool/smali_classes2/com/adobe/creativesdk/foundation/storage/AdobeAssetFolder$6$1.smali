.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

.field final synthetic val$jsonDataStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->val$jsonDataStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->val$jsonDataStr:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 796
    const-string/jumbo v0, "children"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 798
    if-eqz v5, :cond_3

    move v3, v2

    move v0, v2

    .line 800
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 802
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 803
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 805
    const-string/jumbo v8, "application/vnd.adobe.directory+json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 806
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v8, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$108(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    .line 810
    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v8, "renderable"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 811
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$302(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$402(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "size"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$502(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J

    .line 814
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "md5"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$602(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$702(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "created"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$802(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "modified"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$902(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "pages"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1002(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;I)I

    .line 819
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "height"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J

    .line 820
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    const-string/jumbo v7, "width"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1202(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J

    move v0, v1

    .line 800
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 808
    :cond_1
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v8, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$208(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 907
    :catch_0
    move-exception v0

    .line 908
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 910
    :goto_2
    return-void

    .line 825
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    move-result v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1302(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;I)I

    .line 828
    :cond_3
    const-string/jumbo v0, "total_children"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "total_children"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 829
    :goto_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    move-result v1

    if-ge v1, v0, :cond_6

    .line 831
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;)V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 828
    :cond_4
    const-string/jumbo v0, "children"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "children"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    .line 855
    :cond_6
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 856
    const-string/jumbo v0, "num_files"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 857
    const-string/jumbo v0, "num_folders"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 858
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string/jumbo v0, "size"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$500(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 861
    const-string/jumbo v0, "md5"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$600(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$700(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string/jumbo v0, "created"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$800(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const-string/jumbo v0, "modified"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$900(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string/jumbo v0, "page"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    const-string/jumbo v0, "height"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 867
    const-string/jumbo v0, "width"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$1200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 869
    const-string/jumbo v0, "com.adobe.cc.storage"

    .line 871
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getGUID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PAGE_RESOURCE_COLLECTION_DATA"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 872
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.storage"

    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$3;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;)V

    .line 871
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addData([BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 894
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;

    invoke-direct {v1, p0, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 904
    :cond_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v7}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
