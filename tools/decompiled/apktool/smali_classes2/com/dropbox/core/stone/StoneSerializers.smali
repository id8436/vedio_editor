.class public final Lcom/dropbox/core/stone/StoneSerializers;
.super Ljava/lang/Object;
.source "StoneSerializers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binary()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;

    return-object v0
.end method

.method public static boolean_()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    return-object v0
.end method

.method public static float32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;

    return-object v0
.end method

.method public static float64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;

    return-object v0
.end method

.method public static int32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;

    return-object v0
.end method

.method public static int64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-object v0
.end method

.method public static list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static map(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$MapSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$MapSerializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;)",
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;-><init>(Lcom/dropbox/core/stone/StructSerializer;)V

    return-object v0
.end method

.method public static string()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    return-object v0
.end method

.method public static timestamp()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    return-object v0
.end method

.method public static uInt32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-object v0
.end method

.method public static uInt64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-object v0
.end method

.method public static void_()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;

    return-object v0
.end method
