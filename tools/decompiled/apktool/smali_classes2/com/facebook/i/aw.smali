.class public Lcom/facebook/i/aw;
.super Ljava/lang/Object;
.source "Utility.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/facebook/i/aw;->a:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lcom/facebook/i/aw;->b:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/facebook/i/aw;->c:Landroid/net/Uri;

    .line 252
    iput-object p4, p0, Lcom/facebook/i/aw;->d:[I

    .line 253
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lcom/facebook/i/aw;
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lcom/facebook/i/aw;->b(Lorg/json/JSONObject;)Lcom/facebook/i/aw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)[I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 211
    const/4 v0, 0x0

    .line 212
    if-eqz p0, :cond_2

    .line 213
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 214
    new-array v2, v4, [I

    .line 215
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 217
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 218
    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v5}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    :cond_0
    :goto_1
    aput v0, v2, v3

    .line 215
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v5, "FacebookSDK"

    invoke-static {v5, v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 227
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 236
    :cond_2
    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/facebook/i/aw;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 174
    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 187
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 188
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 189
    invoke-static {v2}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    :cond_2
    const-string/jumbo v1, "versions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/facebook/i/aw;->a(Lorg/json/JSONArray;)[I

    move-result-object v4

    .line 203
    new-instance v1, Lcom/facebook/i/aw;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/i/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/i/aw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/i/aw;->b:Ljava/lang/String;

    return-object v0
.end method
