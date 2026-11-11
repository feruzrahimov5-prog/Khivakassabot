import asyncio
from telethon import TelegramClient

api_id = 35651244
api_hash = "d7283bdd8484f650890dba335104f969"
phone = "+998919162323"

async def main():
    client = TelegramClient('temp_session', api_id, api_hash)
    await client.start(phone=phone)
    session_string = client.session.save()
    print(f"\n📝 USERBOT_SESSION:\n{session_string}\n")
    await client.disconnect()

if __name__ == "__main__":
    asyncio.run(main())
