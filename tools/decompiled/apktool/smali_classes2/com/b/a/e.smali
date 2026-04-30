.class public Lcom/b/a/e;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/b/a/h;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/b/a/e/q;

.field protected final f:Lcom/b/a/e/i;

.field private g:Lcom/b/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/a",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/b/a/d/c;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/b/a/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/h/e",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/b/a/k;

.field private t:Z

.field private u:Lcom/b/a/h/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/h/a/f",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/b/a/d/b/e;

.field private y:Lcom/b/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/g",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/b/a/g/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/b/a/h;",
            "Lcom/b/a/e/q;",
            "Lcom/b/a/e/i;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/b/a/i/a;->a()Lcom/b/a/i/a;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/e;->i:Lcom/b/a/d/c;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/e;->p:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/b/a/e;->t:Z

    .line 73
    invoke-static {}, Lcom/b/a/h/a/g;->a()Lcom/b/a/h/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    .line 74
    iput v2, p0, Lcom/b/a/e;->v:I

    .line 75
    iput v2, p0, Lcom/b/a/e;->w:I

    .line 76
    sget-object v1, Lcom/b/a/d/b/e;->d:Lcom/b/a/d/b/e;

    iput-object v1, p0, Lcom/b/a/e;->x:Lcom/b/a/d/b/e;

    .line 77
    invoke-static {}, Lcom/b/a/d/d/d;->b()Lcom/b/a/d/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/e;->y:Lcom/b/a/d/g;

    .line 97
    iput-object p1, p0, Lcom/b/a/e;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/b/a/e;->a:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/b/a/e;->d:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/b/a/e;->c:Lcom/b/a/h;

    .line 101
    iput-object p6, p0, Lcom/b/a/e;->e:Lcom/b/a/e/q;

    .line 102
    iput-object p7, p0, Lcom/b/a/e;->f:Lcom/b/a/e/i;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lcom/b/a/g/a;

    invoke-direct {v0, p3}, Lcom/b/a/g/a;-><init>(Lcom/b/a/g/f;)V

    :cond_0
    iput-object v0, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/b/a/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p3, Lcom/b/a/e;->b:Landroid/content/Context;

    iget-object v2, p3, Lcom/b/a/e;->a:Ljava/lang/Class;

    iget-object v5, p3, Lcom/b/a/e;->c:Lcom/b/a/h;

    iget-object v6, p3, Lcom/b/a/e;->e:Lcom/b/a/e/q;

    iget-object v7, p3, Lcom/b/a/e;->f:Lcom/b/a/e/i;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V

    .line 87
    iget-object v0, p3, Lcom/b/a/e;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/b/a/e;->h:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lcom/b/a/e;->j:Z

    iput-boolean v0, p0, Lcom/b/a/e;->j:Z

    .line 89
    iget-object v0, p3, Lcom/b/a/e;->i:Lcom/b/a/d/c;

    iput-object v0, p0, Lcom/b/a/e;->i:Lcom/b/a/d/c;

    .line 90
    iget-object v0, p3, Lcom/b/a/e;->x:Lcom/b/a/d/b/e;

    iput-object v0, p0, Lcom/b/a/e;->x:Lcom/b/a/d/b/e;

    .line 91
    iget-boolean v0, p3, Lcom/b/a/e;->t:Z

    iput-boolean v0, p0, Lcom/b/a/e;->t:Z

    .line 92
    return-void
.end method

.method private a(Lcom/b/a/h/b/k;FLcom/b/a/k;Lcom/b/a/h/d;)Lcom/b/a/h/c;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;F",
            "Lcom/b/a/k;",
            "Lcom/b/a/h/d;",
            ")",
            "Lcom/b/a/h/c;"
        }
    .end annotation

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/e;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/e;->i:Lcom/b/a/d/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/e;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/b/a/e;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/b/a/e;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/b/a/e;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/b/a/e;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/e;->B:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/b/a/e;->C:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/b/a/e;->m:Lcom/b/a/h/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/e;->c:Lcom/b/a/h;

    invoke-virtual {v5}, Lcom/b/a/h;->b()Lcom/b/a/d/b/f;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/e;->y:Lcom/b/a/d/g;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/e;->d:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/b/a/e;->t:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/e;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/e;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/e;->x:Lcom/b/a/d/b/e;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/b/a/h/a;->a(Lcom/b/a/g/f;Ljava/lang/Object;Lcom/b/a/d/c;Landroid/content/Context;Lcom/b/a/k;Lcom/b/a/h/b/k;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/b/a/h/e;Lcom/b/a/h/d;Lcom/b/a/d/b/f;Lcom/b/a/d/g;Ljava/lang/Class;ZLcom/b/a/h/a/f;IILcom/b/a/d/b/e;)Lcom/b/a/h/a;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/b/a/h/b/k;Lcom/b/a/h/g;)Lcom/b/a/h/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;",
            "Lcom/b/a/h/g;",
            ")",
            "Lcom/b/a/h/c;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    if-eqz v0, :cond_4

    .line 802
    iget-boolean v0, p0, Lcom/b/a/e;->A:Z

    if-eqz v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget-object v0, v0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    invoke-static {}, Lcom/b/a/h/a/g;->a()Lcom/b/a/h/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget-object v1, p0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    iput-object v1, v0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget-object v0, v0, Lcom/b/a/e;->s:Lcom/b/a/k;

    if-nez v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    invoke-direct {p0}, Lcom/b/a/e;->a()Lcom/b/a/k;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/e;->s:Lcom/b/a/k;

    .line 815
    :cond_2
    iget v0, p0, Lcom/b/a/e;->w:I

    iget v1, p0, Lcom/b/a/e;->v:I

    invoke-static {v0, v1}, Lcom/b/a/j/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget v0, v0, Lcom/b/a/e;->w:I

    iget-object v1, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget v1, v1, Lcom/b/a/e;->v:I

    invoke-static {v0, v1}, Lcom/b/a/j/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    iget v1, p0, Lcom/b/a/e;->w:I

    iget v2, p0, Lcom/b/a/e;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/b/a/e;->b(II)Lcom/b/a/e;

    .line 821
    :cond_3
    new-instance v0, Lcom/b/a/h/g;

    invoke-direct {v0, p2}, Lcom/b/a/h/g;-><init>(Lcom/b/a/h/d;)V

    .line 822
    iget-object v1, p0, Lcom/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;FLcom/b/a/k;Lcom/b/a/h/d;)Lcom/b/a/h/c;

    move-result-object v1

    .line 824
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/b/a/e;->A:Z

    .line 826
    iget-object v2, p0, Lcom/b/a/e;->o:Lcom/b/a/e;

    invoke-direct {v2, p1, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;Lcom/b/a/h/g;)Lcom/b/a/h/c;

    move-result-object v2

    .line 827
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/b/a/e;->A:Z

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/b/a/h/g;->a(Lcom/b/a/h/c;Lcom/b/a/h/c;)V

    .line 839
    :goto_0
    return-object v0

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/b/a/e;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 832
    new-instance v0, Lcom/b/a/h/g;

    invoke-direct {v0, p2}, Lcom/b/a/h/g;-><init>(Lcom/b/a/h/d;)V

    .line 833
    iget-object v1, p0, Lcom/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;FLcom/b/a/k;Lcom/b/a/h/d;)Lcom/b/a/h/c;

    move-result-object v1

    .line 834
    iget-object v2, p0, Lcom/b/a/e;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/b/a/e;->a()Lcom/b/a/k;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;FLcom/b/a/k;Lcom/b/a/h/d;)Lcom/b/a/h/c;

    move-result-object v2

    .line 835
    invoke-virtual {v0, v1, v2}, Lcom/b/a/h/g;->a(Lcom/b/a/h/c;Lcom/b/a/h/c;)V

    goto :goto_0

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;FLcom/b/a/k;Lcom/b/a/h/d;)Lcom/b/a/h/c;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Lcom/b/a/k;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    sget-object v1, Lcom/b/a/k;->d:Lcom/b/a/k;

    if-ne v0, v1, :cond_0

    .line 784
    sget-object v0, Lcom/b/a/k;->c:Lcom/b/a/k;

    .line 790
    :goto_0
    return-object v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    sget-object v1, Lcom/b/a/k;->c:Lcom/b/a/k;

    if-ne v0, v1, :cond_1

    .line 786
    sget-object v0, Lcom/b/a/k;->b:Lcom/b/a/k;

    goto :goto_0

    .line 788
    :cond_1
    sget-object v0, Lcom/b/a/k;->a:Lcom/b/a/k;

    goto :goto_0
.end method

.method private b(Lcom/b/a/h/b/k;)Lcom/b/a/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;)",
            "Lcom/b/a/h/c;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    if-nez v0, :cond_0

    .line 795
    sget-object v0, Lcom/b/a/k;->c:Lcom/b/a/k;

    iput-object v0, p0, Lcom/b/a/e;->s:Lcom/b/a/k;

    .line 797
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;Lcom/b/a/h/g;)Lcom/b/a/h/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/e;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/b/a/f;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 704
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/b/a/e;->c:Lcom/b/a/h;

    iget-object v1, p0, Lcom/b/a/e;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/h;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/h/b/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/e;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;

    move-result-object v0

    return-object v0

    .line 691
    :pswitch_0
    invoke-virtual {p0}, Lcom/b/a/e;->e()V

    goto :goto_0

    .line 696
    :pswitch_1
    invoke-virtual {p0}, Lcom/b/a/e;->d()V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 650
    if-nez p1, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/e;->j:Z

    if-nez v0, :cond_1

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_1
    invoke-interface {p1}, Lcom/b/a/h/b/k;->getRequest()Lcom/b/a/h/c;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_2

    .line 660
    invoke-interface {v0}, Lcom/b/a/h/c;->d()V

    .line 661
    iget-object v1, p0, Lcom/b/a/e;->e:Lcom/b/a/e/q;

    invoke-virtual {v1, v0}, Lcom/b/a/e/q;->b(Lcom/b/a/h/c;)V

    .line 662
    invoke-interface {v0}, Lcom/b/a/h/c;->a()V

    .line 665
    :cond_2
    invoke-direct {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/h/b/k;)Lcom/b/a/h/c;

    move-result-object v0

    .line 666
    invoke-interface {p1, v0}, Lcom/b/a/h/b/k;->setRequest(Lcom/b/a/h/c;)V

    .line 667
    iget-object v1, p0, Lcom/b/a/e;->f:Lcom/b/a/e/i;

    invoke-interface {v1, p1}, Lcom/b/a/e/i;->a(Lcom/b/a/e/j;)V

    .line 668
    iget-object v1, p0, Lcom/b/a/e;->e:Lcom/b/a/e/q;

    invoke-virtual {v1, v0}, Lcom/b/a/e/q;->a(Lcom/b/a/h/c;)V

    .line 670
    return-object p1
.end method

.method public b(II)Lcom/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p1, p2}, Lcom/b/a/j/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    iput p1, p0, Lcom/b/a/e;->w:I

    .line 574
    iput p2, p0, Lcom/b/a/e;->v:I

    .line 576
    return-object p0
.end method

.method public b(Lcom/b/a/d/b/e;)Lcom/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/e;",
            ")",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/b/a/e;->x:Lcom/b/a/d/b/e;

    .line 273
    return-object p0
.end method

.method public b(Lcom/b/a/d/b;)Lcom/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b",
            "<TDataType;>;)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    invoke-virtual {v0, p1}, Lcom/b/a/g/a;->a(Lcom/b/a/d/b;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public b(Lcom/b/a/d/c;)Lcom/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c;",
            ")",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    iput-object p1, p0, Lcom/b/a/e;->i:Lcom/b/a/d/c;

    .line 598
    return-object p0
.end method

.method public b(Lcom/b/a/d/e;)Lcom/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<TDataType;TResourceType;>;)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    invoke-virtual {v0, p1}, Lcom/b/a/g/a;->a(Lcom/b/a/d/e;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public b(Lcom/b/a/h/a/f;)Lcom/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/a/f",
            "<TTranscodeType;>;)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iput-object p1, p0, Lcom/b/a/e;->u:Lcom/b/a/h/a/f;

    .line 429
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 613
    iput-object p1, p0, Lcom/b/a/e;->h:Ljava/lang/Object;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/e;->j:Z

    .line 615
    return-object p0
.end method

.method public b(Z)Lcom/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 555
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/b/a/e;->t:Z

    .line 557
    return-object p0

    .line 555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Lcom/b/a/d/g;)Lcom/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/b/a/d/g",
            "<TResourceType;>;)",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/b/a/e;->z:Z

    .line 323
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/b/a/e;->y:Lcom/b/a/d/g;

    .line 329
    :goto_0
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0, p1}, Lcom/b/a/d/d;-><init>([Lcom/b/a/d/g;)V

    iput-object v0, p0, Lcom/b/a/e;->y:Lcom/b/a/d/g;

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/b/a/e;->f()Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public f()Lcom/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 631
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/e;

    .line 633
    iget-object v1, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/e;->g:Lcom/b/a/g/a;

    invoke-virtual {v1}, Lcom/b/a/g/a;->g()Lcom/b/a/g/a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/b/a/e;->g:Lcom/b/a/g/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-object v0

    .line 633
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
