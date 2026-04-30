.class public Lcom/twitter/sdk/android/core/a/o;
.super Ljava/lang/Object;
.source "Tweet.java"


# instance fields
.field public final A:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "full_text"
        }
        value = "text"
    .end annotation
.end field

.field public final B:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_text_range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "truncated"
    .end annotation
.end field

.field public final D:Lcom/twitter/sdk/android/core/a/q;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public final E:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_copyright"
    .end annotation
.end field

.field public final F:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_in_countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_scope"
    .end annotation
.end field

.field public final H:Lcom/twitter/sdk/android/core/a/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field public final a:Lcom/twitter/sdk/android/core/a/f;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_user_retweet"
    .end annotation
.end field

.field public final d:Lcom/twitter/sdk/android/core/a/p;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation
.end field

.field public final e:Lcom/twitter/sdk/android/core/a/p;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended_entities"
    .end annotation
.end field

.field public final f:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field public final g:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorited"
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_level"
    .end annotation
.end field

.field public final i:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public final l:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id_str"
    .end annotation
.end field

.field public final n:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id_str"
    .end annotation
.end field

.field public final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public final q:Lcom/twitter/sdk/android/core/a/j;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place"
    .end annotation
.end field

.field public final r:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "possibly_sensitive"
    .end annotation
.end field

.field public final s:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field public final t:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id"
    .end annotation
.end field

.field public final u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id_str"
    .end annotation
.end field

.field public final v:Lcom/twitter/sdk/android/core/a/o;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status"
    .end annotation
.end field

.field public final w:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweet_count"
    .end annotation
.end field

.field public final x:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted"
    .end annotation
.end field

.field public final y:Lcom/twitter/sdk/android/core/a/o;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted_status"
    .end annotation
.end field

.field public final z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 40

    .prologue
    .line 284
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/twitter/sdk/android/core/a/p;->a:Lcom/twitter/sdk/android/core/a/p;

    sget-object v6, Lcom/twitter/sdk/android/core/a/p;->a:Lcom/twitter/sdk/android/core/a/p;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string/jumbo v12, "0"

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v16, "0"

    const-wide/16 v17, 0x0

    const-string/jumbo v19, "0"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "0"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v39}, Lcom/twitter/sdk/android/core/a/o;-><init>(Lcom/twitter/sdk/android/core/a/f;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/a/p;Lcom/twitter/sdk/android/core/a/p;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/a/j;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/a/o;IZLcom/twitter/sdk/android/core/a/o;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/a/q;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/a/e;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/a/f;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/a/p;Lcom/twitter/sdk/android/core/a/p;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/a/j;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/a/o;IZLcom/twitter/sdk/android/core/a/o;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/a/q;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/a/f;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/a/p;",
            "Lcom/twitter/sdk/android/core/a/p;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/a/j;",
            "Z",
            "Ljava/lang/Object;",
            "J",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/a/o;",
            "IZ",
            "Lcom/twitter/sdk/android/core/a/o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/twitter/sdk/android/core/a/q;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/a/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/twitter/sdk/android/core/a/o;->a:Lcom/twitter/sdk/android/core/a/f;

    .line 300
    iput-object p2, p0, Lcom/twitter/sdk/android/core/a/o;->b:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/twitter/sdk/android/core/a/o;->c:Ljava/lang/Object;

    .line 302
    if-nez p4, :cond_0

    sget-object p4, Lcom/twitter/sdk/android/core/a/p;->a:Lcom/twitter/sdk/android/core/a/p;

    :cond_0
    iput-object p4, p0, Lcom/twitter/sdk/android/core/a/o;->d:Lcom/twitter/sdk/android/core/a/p;

    .line 303
    if-nez p5, :cond_1

    sget-object p5, Lcom/twitter/sdk/android/core/a/p;->a:Lcom/twitter/sdk/android/core/a/p;

    :cond_1
    iput-object p5, p0, Lcom/twitter/sdk/android/core/a/o;->e:Lcom/twitter/sdk/android/core/a/p;

    .line 304
    iput-object p6, p0, Lcom/twitter/sdk/android/core/a/o;->f:Ljava/lang/Integer;

    .line 305
    iput-boolean p7, p0, Lcom/twitter/sdk/android/core/a/o;->g:Z

    .line 306
    iput-object p8, p0, Lcom/twitter/sdk/android/core/a/o;->h:Ljava/lang/String;

    .line 307
    iput-wide p9, p0, Lcom/twitter/sdk/android/core/a/o;->i:J

    .line 308
    iput-object p11, p0, Lcom/twitter/sdk/android/core/a/o;->j:Ljava/lang/String;

    .line 309
    iput-object p12, p0, Lcom/twitter/sdk/android/core/a/o;->k:Ljava/lang/String;

    .line 310
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/a/o;->l:J

    .line 311
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->m:Ljava/lang/String;

    .line 312
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/a/o;->n:J

    .line 313
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->o:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->p:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->q:Lcom/twitter/sdk/android/core/a/j;

    .line 316
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/a/o;->r:Z

    .line 317
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->s:Ljava/lang/Object;

    .line 318
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/a/o;->t:J

    .line 319
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->u:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->v:Lcom/twitter/sdk/android/core/a/o;

    .line 321
    move/from16 v0, p27

    iput v0, p0, Lcom/twitter/sdk/android/core/a/o;->w:I

    .line 322
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/a/o;->x:Z

    .line 323
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->y:Lcom/twitter/sdk/android/core/a/o;

    .line 324
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->z:Ljava/lang/String;

    .line 325
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->A:Ljava/lang/String;

    .line 326
    invoke-static/range {p32 .. p32}, Lcom/twitter/sdk/android/core/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/core/a/o;->B:Ljava/util/List;

    .line 327
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/a/o;->C:Z

    .line 328
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->D:Lcom/twitter/sdk/android/core/a/q;

    .line 329
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/a/o;->E:Z

    .line 330
    invoke-static/range {p36 .. p36}, Lcom/twitter/sdk/android/core/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/core/a/o;->F:Ljava/util/List;

    .line 331
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->G:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a/o;->H:Lcom/twitter/sdk/android/core/a/e;

    .line 333
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/a/o;->i:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 342
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    instance-of v1, p1, Lcom/twitter/sdk/android/core/a/o;

    if-eqz v1, :cond_0

    .line 344
    check-cast p1, Lcom/twitter/sdk/android/core/a/o;

    .line 345
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/a/o;->i:J

    iget-wide v4, p1, Lcom/twitter/sdk/android/core/a/o;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/a/o;->i:J

    long-to-int v0, v0

    return v0
.end method
