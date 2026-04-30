.class public Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;
.super Ljava/lang/Object;
.source "Adobe360OperationDocument.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _inputs:Lorg/json/JSONObject;

.field _options:Lorg/json/JSONObject;

.field _outputDispositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;",
            ">;"
        }
    .end annotation
.end field

.field _outputs:Lorg/json/JSONObject;

.field _results:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    .line 41
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    .line 43
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    .line 45
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    .line 47
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v12, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    .line 41
    iput-object v12, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    .line 43
    iput-object v12, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    .line 45
    iput-object v12, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    .line 47
    iput-object v12, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "options"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v1, "results"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v1, "inputs"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 157
    if-eqz v7, :cond_6

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    check-cast v2, Lorg/json/JSONArray;

    .line 167
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move v4, v5

    .line 168
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    .line 170
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lorg/json/JSONObject;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 173
    check-cast v3, Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v10, "href"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 168
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    .line 263
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Adobe360OperationDocument"

    invoke-static {v2, v3, v12, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    check-cast v2, Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v3, "href"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_2

    .line 191
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v1

    .line 265
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Adobe360OperationDocument read failed"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_6
    :try_start_2
    const-string/jumbo v1, "outputs"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 199
    if-eqz v6, :cond_0

    .line 201
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 207
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move v4, v5

    .line 209
    :goto_4
    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_9

    .line 211
    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lorg/json/JSONObject;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 213
    check-cast v2, Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v9, "href"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_8

    .line 217
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 209
    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 221
    :cond_9
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    if-nez v2, :cond_a

    .line 223
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    .line 226
    :cond_a
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 228
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    check-cast v3, Lorg/json/JSONObject;

    .line 231
    const-string/jumbo v2, "href"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_d

    .line 234
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    if-nez v3, :cond_c

    .line 236
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    .line 239
    :cond_c
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 244
    :cond_d
    const-string/jumbo v2, "accept"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_7

    .line 248
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    if-nez v3, :cond_e

    .line 250
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    .line 253
    :cond_e
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;-><init>()V

    .line 254
    iput-object v2, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private static assetReferenceDictFromPathDict(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 91
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 94
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 101
    check-cast v1, Lorg/json/JSONArray;

    .line 102
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 103
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    const-string/jumbo v8, "href"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v3

    .line 109
    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v8, "Adobe360OperationDocument"

    invoke-static {v7, v8, v9, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360OperationDocument"

    invoke-static {v1, v2, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_2
    check-cast v1, Ljava/lang/String;

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 122
    :try_start_2
    const-string/jumbo v3, "href"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    .line 125
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360OperationDocument"

    invoke-static {v1, v2, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    :cond_3
    return-object v4
.end method

.method public static createOperationDocumentWithFileAtPath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInputs()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getOptions()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getOutputDispositions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOutputs()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResults()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setInputs(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method public setOptions(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    .line 55
    return-void
.end method

.method public setOutputDispositions(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method public setOutputs(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    .line 63
    return-void
.end method

.method public writeToFileAtPath(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 274
    const/4 v2, 0x1

    .line 275
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v0, "options"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_options:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 284
    const-string/jumbo v0, "results"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_results:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_inputs:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->assetReferenceDictFromPathDict(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "inputs"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "outputs and outputDispositions are mutually excluive properties"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 331
    :catch_0
    move-exception v0

    move v0, v3

    .line 337
    :goto_0
    return v0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputs:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->assetReferenceDictFromPathDict(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 301
    const-string/jumbo v1, "outputs"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move v0, v2

    .line 336
    goto :goto_0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 306
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->_outputDispositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    .line 315
    iget-object v7, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 316
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 317
    const-string/jumbo v8, "accept"

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 334
    :catch_1
    move-exception v0

    move v0, v3

    .line 335
    goto :goto_0

    .line 322
    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 324
    const-string/jumbo v0, "outputs"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1
.end method
