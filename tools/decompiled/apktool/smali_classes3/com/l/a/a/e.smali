.class public Lcom/l/a/a/e;
.super Ljava/lang/Object;
.source "MailcapTokenizer.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/l/a/a/e;->b:I

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/l/a/a/e;->c:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->d:I

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/l/a/a/e;->f:Z

    .line 58
    const/16 v0, 0x3b

    iput-char v0, p0, Lcom/l/a/a/e;->g:C

    .line 59
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "really unknown"

    .line 97
    sparse-switch p0, :sswitch_data_0

    .line 121
    :goto_0
    return-object v0

    .line 99
    :sswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 102
    :sswitch_1
    const-string/jumbo v0, "start"

    goto :goto_0

    .line 105
    :sswitch_2
    const-string/jumbo v0, "string"

    goto :goto_0

    .line 108
    :sswitch_3
    const-string/jumbo v0, "EOI"

    goto :goto_0

    .line 111
    :sswitch_4
    const-string/jumbo v0, "\'/\'"

    goto :goto_0

    .line 114
    :sswitch_5
    const-string/jumbo v0, "\';\'"

    goto :goto_0

    .line 117
    :sswitch_6
    const-string/jumbo v0, "\'=\'"

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 273
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 276
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 278
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_0

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_1

    .line 282
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 287
    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(C)Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    sparse-switch p0, :sswitch_data_0

    .line 243
    :goto_0
    return v0

    .line 239
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(C)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    packed-switch p0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return v0

    .line 252
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 3

    .prologue
    .line 188
    iget v0, p0, Lcom/l/a/a/e;->b:I

    .line 191
    :goto_0
    iget v1, p0, Lcom/l/a/a/e;->b:I

    iget v2, p0, Lcom/l/a/a/e;->c:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/l/a/a/e;->e(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/l/a/a/e;->b:I

    goto :goto_0

    .line 196
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/l/a/a/e;->d:I

    .line 197
    iget-object v1, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static c(C)Z
    .locals 1

    .prologue
    .line 260
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 202
    iget v1, p0, Lcom/l/a/a/e;->b:I

    .line 205
    const/4 v0, 0x0

    .line 206
    :goto_0
    iget v2, p0, Lcom/l/a/a/e;->b:I

    iget v3, p0, Lcom/l/a/a/e;->c:I

    if-ge v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 207
    iget-object v2, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v3, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 208
    iget-char v3, p0, Lcom/l/a/a/e;->g:C

    if-eq v2, v3, :cond_0

    .line 209
    iget v2, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/l/a/a/e;->b:I

    goto :goto_0

    .line 211
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/l/a/a/e;->d:I

    .line 216
    iget-object v0, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public static d(C)Z
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public static e(C)Z
    .locals 1

    .prologue
    .line 268
    invoke-static {p0}, Lcom/l/a/a/e;->a(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/l/a/a/e;->c(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/l/a/a/e;->d(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/l/a/a/e;->f:Z

    .line 73
    return-void
.end method

.method public b()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3d

    const/16 v4, 0x3b

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 139
    iget v0, p0, Lcom/l/a/a/e;->b:I

    iget v1, p0, Lcom/l/a/a/e;->c:I

    if-ge v0, v1, :cond_9

    .line 141
    :goto_0
    iget v0, p0, Lcom/l/a/a/e;->b:I

    iget v1, p0, Lcom/l/a/a/e;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v1, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/l/a/a/e;->d(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->b:I

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lcom/l/a/a/e;->b:I

    iget v1, p0, Lcom/l/a/a/e;->c:I

    if-ge v0, v1, :cond_8

    .line 148
    iget-object v0, p0, Lcom/l/a/a/e;->a:Ljava/lang/String;

    iget v1, p0, Lcom/l/a/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 149
    iget-boolean v1, p0, Lcom/l/a/a/e;->f:Z

    if-eqz v1, :cond_4

    .line 150
    invoke-static {v0}, Lcom/l/a/a/e;->b(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/l/a/a/e;->d()V

    .line 183
    :goto_1
    iget v0, p0, Lcom/l/a/a/e;->d:I

    return v0

    .line 152
    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    .line 153
    :cond_2
    iput v0, p0, Lcom/l/a/a/e;->d:I

    .line 154
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 155
    iget v0, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->b:I

    goto :goto_1

    .line 157
    :cond_3
    iput v2, p0, Lcom/l/a/a/e;->d:I

    .line 158
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 159
    iget v0, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->b:I

    goto :goto_1

    .line 162
    :cond_4
    invoke-static {v0}, Lcom/l/a/a/e;->e(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    invoke-direct {p0}, Lcom/l/a/a/e;->c()V

    goto :goto_1

    .line 164
    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_7

    .line 165
    :cond_6
    iput v0, p0, Lcom/l/a/a/e;->d:I

    .line 166
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 167
    iget v0, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->b:I

    goto :goto_1

    .line 169
    :cond_7
    iput v2, p0, Lcom/l/a/a/e;->d:I

    .line 170
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    .line 171
    iget v0, p0, Lcom/l/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/a/a/e;->b:I

    goto :goto_1

    .line 175
    :cond_8
    iput v3, p0, Lcom/l/a/a/e;->d:I

    .line 176
    iput-object v6, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    goto :goto_1

    .line 179
    :cond_9
    iput v3, p0, Lcom/l/a/a/e;->d:I

    .line 180
    iput-object v6, p0, Lcom/l/a/a/e;->e:Ljava/lang/String;

    goto :goto_1
.end method
