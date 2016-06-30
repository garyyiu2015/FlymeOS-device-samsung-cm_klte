.class public Ljavax/crypto/spec/GCMParameterSpec;
.super Ljava/lang/Object;
.source "GCMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B

.field private final tagLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "tagLen"    # I
    .param p2, "iv"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-gez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag should be a non-negative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    .line 54
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    .line 55
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 3
    .param p1, "tagLen"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-gez p1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tag should be a non-negative integer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iv == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    :try_start_0
    array-length v1, p2

    invoke-static {v1, p3, p4}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    .line 81
    add-int v1, p3, p4

    invoke-static {p2, p3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTLen()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    return v0
.end method
