from pathlib import Path


class Main:

    def __call__(_, *args, **kwargs):
        _.hex = [
            *[0x01, 0x4F, 0x12, 0x06],
            *[0x4C, 0x24, 0x20, 0x0F],
            *[0x00, 0x04, 0x08, 0x60],
            *[0x31, 0x42, 0x30, 0x38],
        ]

        _.unsigned = tuple(range(len(_.hex)))
        _.unsigned = zip(_.unsigned, _.hex)
        _.unsigned = dict(_.unsigned)

        _.signed = [*range(len(_.hex) // 2), *range(-len(_.hex) // 2, 0)]
        _.signed = zip(_.signed, _.hex)
        _.signed = dict(_.signed)

        print()

        for i in range(1, 8):
            print()
            print(f"""report "test: {i} - {i} == 0";""")

            print()
            print("tsel <= '1';")
            for x in ["a", "b"]:
                _.tx(x, i)

            print()
            for x in ["a", "b"]:
                _.ex(x, i)

            for x in ["o", "s"]:
                _.ex(x, 0)

            print()
            wait = lambda x, y="ns": print("wait", "for", x, y, ";")
            clk = lambda: print("clk", "<=", "not", "clk", ";")

            wait(25)
            clk()
            wait(50)
            clk()
            wait(25)

            print()

        _.tsel(0)
        for i in range(16):
            _.a(i)
            for j in range(16):
                _.tb(j)
                _.esx("b", j)

                _.esx('s', (i + j) // 16)
                _.esx('o', (i + j) >= 16

    def tsel(_, x):
        assert 0 == int(x) or 1 == int(x)
        print(f"tsel <= '{x}';", x)

    def a(_, v):
        _.ta(v)
        _.esx("a", v)

    def ta(_, v):
        _.tx("a", v)

    def tb(_, v):
        _.tx("b", v)

    def tx(_, x, v):
        assert int(v) >= 0 and int(v) < 16
        print('t{0} <= x"{1:00x}";'.format(x, v))

    def esx(_, x, v):
        print('es{0} <= 7x"{1:02x}";'.format(x, _.unsigned[v]))


if __name__ == "__main__":
    Main()()
