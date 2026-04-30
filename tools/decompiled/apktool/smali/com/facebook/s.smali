.class public final Lcom/facebook/s;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# static fields
.field static final a:Lcom/facebook/v;


# instance fields
.field private final b:Lcom/facebook/u;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lorg/json/JSONObject;

.field private final l:Lorg/json/JSONObject;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/net/HttpURLConnection;

.field private final o:Lcom/facebook/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/v;

    const/16 v1, 0xc8

    const/16 v2, 0x12b

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/v;-><init>(IILcom/facebook/t;)V

    sput-object v0, Lcom/facebook/s;->a:Lcom/facebook/v;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/q;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/facebook/s;->c:I

    .line 114
    iput p2, p0, Lcom/facebook/s;->d:I

    .line 115
    iput p3, p0, Lcom/facebook/s;->e:I

    .line 116
    iput-object p4, p0, Lcom/facebook/s;->f:Ljava/lang/String;

    .line 117
    iput-object p5, p0, Lcom/facebook/s;->g:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Lcom/facebook/s;->l:Lorg/json/JSONObject;

    .line 119
    iput-object p10, p0, Lcom/facebook/s;->k:Lorg/json/JSONObject;

    .line 120
    iput-object p11, p0, Lcom/facebook/s;->m:Ljava/lang/Object;

    .line 121
    iput-object p12, p0, Lcom/facebook/s;->n:Ljava/net/HttpURLConnection;

    .line 122
    iput-object p6, p0, Lcom/facebook/s;->h:Ljava/lang/String;

    .line 123
    iput-object p7, p0, Lcom/facebook/s;->i:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz p13, :cond_0

    .line 127
    iput-object p13, p0, Lcom/facebook/s;->o:Lcom/facebook/q;

    .line 128
    const/4 v0, 0x1

    .line 133
    :goto_0
    invoke-static {}, Lcom/facebook/s;->g()Lcom/facebook/i/x;

    move-result-object v1

    .line 134
    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/u;->b:Lcom/facebook/u;

    .line 136
    :goto_1
    iput-object v0, p0, Lcom/facebook/s;->b:Lcom/facebook/u;

    .line 137
    iget-object v0, p0, Lcom/facebook/s;->b:Lcom/facebook/u;

    invoke-virtual {v1, v0}, Lcom/facebook/i/x;->a(Lcom/facebook/u;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/s;->j:Ljava/lang/String;

    .line 138
    return-void

    .line 130
    :cond_0
    new-instance v1, Lcom/facebook/ac;

    invoke-direct {v1, p0, p5}, Lcom/facebook/ac;-><init>(Lcom/facebook/s;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/s;->o:Lcom/facebook/q;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v1, p2, p3, p8}, Lcom/facebook/i/x;->a(IIZ)Lcom/facebook/u;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 159
    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v13}, Lcom/facebook/s;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/q;)V

    .line 173
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 15

    .prologue
    .line 141
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/facebook/q;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/facebook/q;

    move-object/from16 v14, p2

    :goto_0
    move-object v1, p0

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v14}, Lcom/facebook/s;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/q;)V

    .line 156
    return-void

    .line 141
    :cond_0
    new-instance v14, Lcom/facebook/q;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/facebook/q;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/s;
    .locals 14

    .prologue
    .line 339
    :try_start_0
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    const-string/jumbo v0, "body"

    const-string/jumbo v2, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v0, v2}, Lcom/facebook/i/as;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 344
    if-eqz v9, :cond_3

    instance-of v0, v9, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 345
    check-cast v9, Lorg/json/JSONObject;

    .line 349
    const/4 v4, 0x0

    .line 350
    const/4 v5, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const/4 v6, 0x0

    .line 353
    const/4 v8, 0x0

    .line 354
    const/4 v2, -0x1

    .line 355
    const/4 v3, -0x1

    .line 357
    const/4 v0, 0x0

    .line 358
    const-string/jumbo v10, "error"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 360
    const-string/jumbo v0, "error"

    const/4 v2, 0x0

    .line 361
    invoke-static {v9, v0, v2}, Lcom/facebook/i/as;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 363
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    const-string/jumbo v2, "message"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    const-string/jumbo v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 366
    const-string/jumbo v3, "error_subcode"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 367
    const-string/jumbo v6, "error_user_msg"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 368
    const-string/jumbo v6, "error_user_title"

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 369
    const-string/jumbo v8, "is_transient"

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 370
    const/4 v0, 0x1

    .line 380
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 381
    new-instance v0, Lcom/facebook/s;

    const/4 v13, 0x0

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/facebook/s;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/q;)V

    .line 424
    :goto_1
    return-object v0

    .line 371
    :cond_1
    const-string/jumbo v10, "error_code"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "error_msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "error_reason"

    .line 372
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 373
    :cond_2
    const-string/jumbo v0, "error_reason"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    const-string/jumbo v0, "error_msg"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 375
    const-string/jumbo v0, "error_code"

    const/4 v2, -0x1

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 376
    const-string/jumbo v0, "error_subcode"

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 377
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_3
    sget-object v0, Lcom/facebook/s;->a:Lcom/facebook/v;

    invoke-virtual {v0, v1}, Lcom/facebook/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 401
    new-instance v0, Lcom/facebook/s;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "body"

    .line 410
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "body"

    const-string/jumbo v10, "FACEBOOK_NON_JSON_RESULT"

    .line 411
    invoke-static {p0, v9, v10}, Lcom/facebook/i/as;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    :goto_2
    const/4 v13, 0x0

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/facebook/s;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/q;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v0

    .line 424
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 411
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method static declared-synchronized g()Lcom/facebook/i/x;
    .locals 2

    .prologue
    .line 430
    const-class v1, Lcom/facebook/s;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/i/as;->c(Ljava/lang/String;)Lcom/facebook/i/ax;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/facebook/i/x;->a()Lcom/facebook/i/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 434
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/i/ax;->b()Lcom/facebook/i/x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/facebook/s;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/facebook/s;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/s;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/facebook/s;->g:Ljava/lang/String;

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/s;->o:Lcom/facebook/q;

    invoke-virtual {v0}, Lcom/facebook/q;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/facebook/q;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/s;->o:Lcom/facebook/q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/s;->c:I

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode: "

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/s;->d:I

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorType: "

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/s;->f:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorMessage: "

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/facebook/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
