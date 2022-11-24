-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Host" (
    "hostId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "companyName" TEXT,
    "firstName" TEXT,
    "lastName" TEXT,
    "phone" TEXT,

    CONSTRAINT "Host_pkey" PRIMARY KEY ("hostId")
);

-- CreateTable
CREATE TABLE "Home" (
    "homeId" TEXT NOT NULL DEFAULT extensions.uuid_generate_v4(),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "address1" TEXT,
    "address2" TEXT,
    "country" TEXT,
    "city" TEXT,
    "state" TEXT,
    "zipCode" TEXT,
    "welcomeImg" TEXT,
    "welcomeMsg" TEXT NOT NULL DEFAULT '',
    "wifiName" TEXT,
    "wifiPassword" TEXT,
    "hostId" TEXT NOT NULL,

    CONSTRAINT "Home_pkey" PRIMARY KEY ("homeId")
);

-- AddForeignKey
ALTER TABLE "Home" ADD CONSTRAINT "Home_hostId_fkey" FOREIGN KEY ("hostId") REFERENCES "Host"("hostId") ON DELETE RESTRICT ON UPDATE CASCADE;
