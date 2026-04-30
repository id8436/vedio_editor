.class public Lcom/adobe/customextractor/DataSource/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# static fields
.field public static final FLAG_ALLOW_GZIP:I = 0x1


# instance fields
.field public final absoluteStreamPosition:J

.field public final flags:I

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    .prologue
    .line 70
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    cmp-long v0, p2, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 112
    cmp-long v0, p4, v4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 113
    cmp-long v0, p6, v4

    if-gtz v0, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, p6, v4

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 114
    iput-object p1, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    .line 115
    iput-wide p2, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->absoluteStreamPosition:J

    .line 116
    iput-wide p4, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    .line 117
    iput-wide p6, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J

    .line 118
    iput-object p8, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->key:Ljava/lang/String;

    .line 119
    iput p9, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->flags:I

    .line 120
    return-void

    :cond_2
    move v0, v2

    .line 111
    goto :goto_0

    :cond_3
    move v0, v2

    .line 112
    goto :goto_1
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 82
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->absoluteStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/customextractor/DataSource/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
